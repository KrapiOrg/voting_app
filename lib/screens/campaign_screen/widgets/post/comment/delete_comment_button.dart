import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/providers.dart';

class DeleteCommentButton extends ConsumerWidget {
  const DeleteCommentButton({
    super.key,
    required this.comment,
  });

  final KComment comment;

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
              print(comment.id!);
              await db.collection('comments').delete(comment.id!);
              print('deleted comment ${comment.id}');
            },
          ),
        ],
      ),
    );
  }
}
