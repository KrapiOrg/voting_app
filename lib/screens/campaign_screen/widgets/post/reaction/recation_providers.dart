import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voting_app/models/reaction/reaction.dart';
import 'package:voting_app/reactions_state/reaction_state.dart';

typedef ReactionFamily = Tuple2<String, String>;

class PostReactionNotifier extends StateNotifier<ReactionState> {
  static final db = Supabase.instance.client;

  final String ownerId;
  final String postId;
  late final RealtimeChannel channel;

  PostReactionNotifier({
    required this.ownerId,
    required this.postId,
  }) : super(const ReactionState.loading()) {
    fetchInitialState();
  }

  Future<bool> setLikeState(bool isLiked) async {
    final db = Supabase.instance.client;
    final reaction = KReaction(
      ownerId: ownerId,
      postId: postId,
      timestamp: DateTime.now(),
    ).toJson();

    if (!isLiked) {
      try {
        await db.from('reactions').insert(reaction);
        return true;
      } catch (e, st) {
        print(e);
        print(st);
        return false;
      }
    } else {
      try {
        await db.from('reactions').delete().match(
          {
            'owner_id': ownerId,
            'post_id': postId,
          },
        );
        return false;
      } catch (e, st) {
        print(e);
        print(st);
        return isLiked;
      }
    }
  }

  void fetchInitialState() async {
    final res = await db
        .from('reactions')
        .select(
          '*',
          const FetchOptions(
            count: CountOption.exact,
          ),
        )
        .match(
      {
        'owner_id': ownerId,
        'post_id': postId,
      },
    );
    if (res.count == 0) {
      state = const ReactionState.data(false, 0);
    } else {
      final res = await db
          .from('reactions')
          .select(
            '*',
            const FetchOptions(count: CountOption.exact),
          )
          .match({'post_id': postId});
      state = ReactionState.data(true, res.count);
    }
    channel = db.channel('public:reactions:post_id=eq.$postId').on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: 'INSERT',
        schema: 'public',
        table: 'reactions',
        filter: 'post_id=eq.$postId',
      ),
      (payload, [ref]) {
        final reaction = KReaction.fromJson(payload['new']);

        if (reaction.ownerId == ownerId) {
          state = state.copyWith(count: state.count + 1, isLiked: true);
        } else {
          state = state.copyWith(count: state.count + 1);
        }
      },
    ).on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: 'DELETE',
        schema: 'public',
        table: 'reactions',
        filter: 'post_id=eq.$postId',
      ),
      (payload, [ref]) {
        final reaction = KReaction.fromJson(payload['old']);

        if (reaction.ownerId == ownerId) {
          state = state.copyWith(count: state.count - 1, isLiked: false);
        } else {
          state = state.copyWith(count: state.count - 1);
        }
      },
    );
    channel.subscribe();
  }

  @override
  void dispose() async {
    await db.removeChannel(channel);
    super.dispose();
  }
}

final postReactionProvider =
    StateNotifierProvider.autoDispose.family<PostReactionNotifier, ReactionState, ReactionFamily>(
  (ref, family) => PostReactionNotifier(ownerId: family.value1, postId: family.value2),
);
