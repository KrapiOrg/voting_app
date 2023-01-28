import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/providers.dart';

class DeletePostButton extends ConsumerWidget {
  const DeletePostButton({
    super.key,
    required this.post,
  });

  final KPost post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RotatedBox(
      quarterTurns: 1,
      child: PopupMenuButton(
        itemBuilder: (_) => [
          PopupMenuItem(
            child: const Text('Delete'),
            onTap: () async {
              final db = ref.watch(dbProvider);
              await db.collection('posts').delete(post.id!);
              print('deleted post ${post.id}');
            },
          ),
        ],
      ),
    );
  }
}
