import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:rxdart/rxdart.dart';

import 'package:voting_app/models/reaction/reaction.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/reactions_state/reaction_state.dart';

final reactionCountProvider = StreamProvider.family<int, String>(
  (ref, postId) async* {
    final subject = BehaviorSubject.seeded(0);
    final db = ref.watch(dbProvider);

    final countResponse = await db.collection('reactions').getList(
          page: 1,
          perPage: 1,
          filter: 'post_id = "$postId"',
        );

    subject.add(countResponse.totalItems);

    final remover = await db
        .collection(
      'reactions',
    )
        .subscribe(
      '*',
      (e) {
        final reaction = KReaction.fromJson(e.record!.toJson());
        if (reaction.postId != postId) return;

        if (e.action == 'create') {
          subject.add(subject.value + 1);
        } else {
          subject.add(subject.value - 1);
        }
      },
    );

    ref.onDispose(() async {
      await remover.call();
    });
    await for (final countChange in subject.stream) {
      yield countChange;
    }
  },
);

class ReactionFamily {
  final String ownerId;
  final String postId;

  const ReactionFamily({
    required this.ownerId,
    required this.postId,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReactionFamily && other.ownerId == ownerId && other.postId == postId;
  }

  @override
  int get hashCode => ownerId.hashCode ^ postId.hashCode;
}

class PostReactionNotifier extends StateNotifier<ReactionState> {
  final Ref ref;

  final String ownerId;
  final String postId;
  UnsubscribeFunc? _unsubscribeFunc;

  PostReactionNotifier({
    required this.ref,
    required this.ownerId,
    required this.postId,
  }) : super(const ReactionState.loading()) {
    fetchInitialState();
    subscribe();
  }

  Future<bool> setLikeState(bool isLiked) async {
    final db = ref.watch(dbProvider);
    final reaction = KReaction(
      ownerId: ownerId,
      postId: postId,
    );

    if (!isLiked) {
      try {
        final response = await db.collection('reactions').create(body: reaction.toJson());
        state = state.copyWith(reactionId: response.id);
        return true;
      } catch (e, st) {
        print(e);
        print(st);
        rethrow;
      }
    } else {
      try {
        await db.collection('reactions').delete(state.reactionId!, body: reaction.toJson());
        state = state.copyWith(reactionId: null);
        return false;
      } catch (e, st) {
        print(e);
        print(st);
        rethrow;
      }
    }
  }

  void fetchInitialState() async {
    final db = ref.watch(dbProvider);
    final responses = await db.collection('reactions').getList(filter: 'post_id = "$postId"');
    bool isLiked = false;
    String? myReactionId;
    for (final response in responses.items) {
      if (response.getStringValue('owner_id') == ownerId) {
        isLiked = true;
        myReactionId = response.id;
        break;
      }
    }
    state = ReactionState.data(isLiked, myReactionId);
  }

  void subscribe() async {
    final db = ref.watch(dbProvider);
    _unsubscribeFunc = await db
        .collection(
      'reactions',
    )
        .subscribe(
      '*',
      (e) {
        final reaction = KReaction.fromJson(e.record!.toJson());
        if (e.action == 'create') {
          if (reaction.ownerId == ownerId) {
            state = state.copyWith(isLiked: true);
          }
        } else if (e.action == 'delete') {
          if (reaction.ownerId == ownerId) {
            state = state.copyWith(isLiked: false);
          }
        }
      },
    );
  }

  @override
  void dispose() async {
    _unsubscribeFunc?.call();
    super.dispose();
  }
}

final postReactionProvider =
    StateNotifierProvider.autoDispose.family<PostReactionNotifier, ReactionState, ReactionFamily>(
  (ref, family) => PostReactionNotifier(
    ref: ref,
    ownerId: family.ownerId,
    postId: family.postId,
  ),
);
