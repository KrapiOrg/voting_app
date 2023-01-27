import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voting_app/models/post/post.dart';

class DeletePostButton extends StatelessWidget {
  const DeletePostButton({
    super.key,
    required this.post,
  });

  final KPost post;

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
              await db.from('posts').delete().eq('id', post.id);
              print('deleted post ${post.id}');
            },
          ),
        ],
      ),
    );
  }
}
