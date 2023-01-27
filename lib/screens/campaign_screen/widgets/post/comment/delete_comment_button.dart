import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voting_app/models/comment/comment.dart';

class DeleteCommentButton extends StatelessWidget {
  const DeleteCommentButton({
    super.key,
    required this.comment,
  });

  final KComment comment;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: PopupMenuButton(
        itemBuilder: (_) => [
          PopupMenuItem(
            child: const Text('Delete'),
            onTap: () async {
              final db = Supabase.instance.client;
              await db.from('comments').delete().eq('id', comment.id);
              print('deleted post ${comment.id}');
            },
          ),
        ],
      ),
    );
  }
}
