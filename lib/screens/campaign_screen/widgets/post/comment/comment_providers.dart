import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/subjects.dart';

import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/utils/paginator.dart';

final commentCountProvider = StreamProvider.family<int, String>(
  (ref, postId) async* {
    final subject = BehaviorSubject.seeded(0, sync: true);
    final db = ref.watch(dbProvider);

    final countResponse = await db.collection('comments').getList(
          page: 1,
          perPage: 1,
          filter: 'parent_id = "$postId"',
        );

    subject.add(countResponse.totalItems);

    final remover = await db
        .collection(
      'comments',
    )
        .subscribe(
      '*',
      (e) {
        final comment = KComment.fromJson(e.record!.toJson());
        if (comment.parentId != postId) return;

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

final commentsListProvider = Provider.autoDispose.family<DBPaginator<KComment>, DBPaginatorFamily<KComment>>(
  (ref, family) {
    final controller = DBPaginator<KComment>(
      ref,
      'comments',
      family.parentId,
      family.fromJson,
    );
    ref.onDispose(controller.dispose);
    return controller;
  },
);

final previewCommentsProvider = StreamProvider.autoDispose.family<List<KComment>, String>(
  (ref, postId) async* {
    final subject = BehaviorSubject.seeded(<KComment>[], sync: true);
    final db = ref.watch(dbProvider);

    final responses = await db.collection('comments').getList(
          page: 1,
          perPage: 3,
          filter: 'parent_id = "$postId"',
        );

    for (final response in responses.items) {
      final comment = KComment.fromJson(response.toJson());
      subject.add([...subject.value, comment]);
    }

    final remover = await db
        .collection(
      'comments',
    )
        .subscribe(
      '*',
      (e) {
        final comment = KComment.fromJson(e.record!.toJson());
        if (comment.parentId != postId) return;

        if (e.action == 'create') {
          if (subject.value.length == 3) return;
          subject.add([...subject.value, comment]);
        } else {
          if (subject.value.contains(comment)) {
            final copy = [...subject.value];
            copy.removeWhere((element) => element == comment);
            subject.add(copy);
          }
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
