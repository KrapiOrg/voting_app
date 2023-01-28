import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/subjects.dart';

import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/utils/paginator.dart';

final commentCountProvider = StreamProvider.autoDispose.family<int, String>(
  (ref, postId) async* {
    final subject = BehaviorSubject.seeded(0, sync: true);
    final db = ref.watch(dbProvider);

    final countResponse = await db.collection('comments').getList(
          page: 1,
          perPage: 1,
          filter: 'post_id = "$postId"',
        );

    subject.add(countResponse.totalItems);

    final remover = await db
        .collection(
      'comments',
    )
        .subscribe(
      '*',
      (e) {
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
      family.ownerId,
      family.fromJson,
    );
    ref.onDispose(controller.dispose);
    return controller;
  },
);
