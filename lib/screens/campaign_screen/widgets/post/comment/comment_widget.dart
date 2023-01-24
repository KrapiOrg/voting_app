import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/providers.dart';

import 'avatar.dart';
import 'content_widget.dart';
import 'owner.dart';

class CommentWidget extends ConsumerWidget {
  const CommentWidget({
    super.key,
    required this.comment,
  });

  final KComment comment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final owner = ref.watch(userFromIdProvider(comment.ownerId));

    return Card(
      child: Column(
        children: [
          Row(
            children: [
              CommentAvatar(owner: owner),
              CommentOwner(owner: owner),
            ],
          ),
          CommentContentWidget(commentId: comment.id)
        ],
      ),
    );
  }
}
