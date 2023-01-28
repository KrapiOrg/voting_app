import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/utils/paginator.dart';

final postProvider = FutureProvider.autoDispose.family<KPost, String>(
  (ref, id) async {
    final db = ref.watch(dbProvider);
    final model = await db.collection('posts').getOne(id, expand: 'contents_rel');
    return KPost.fromJson(model.toJson());
  },
);

final postsListProvider = Provider.autoDispose.family<DBPaginator<KPost>, DBPaginatorFamily<KPost>>(
  (ref, family) {
    final controller = DBPaginator<KPost>(
      ref,
      'posts',
      family.ownerId,
      family.fromJson,
    );
    ref.onDispose(controller.dispose);
    return controller;
  },
);
