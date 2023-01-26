import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/router.dart';

class ViewPostCommentsAction extends ConsumerWidget {
  const ViewPostCommentsAction({
    super.key,
    required this.post,
    required this.ownerId,
  });

  final KPost post;
  final String ownerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(
        Icons.comment_sharp,
        color: Colors.purple,
      ),
      onPressed: () {
        final router = ref.read(routerProvider);  
        router.go('/home/candidates/$ownerId/campaign/${post.id}/comments', extra: post);
      },
    );
  }
}
