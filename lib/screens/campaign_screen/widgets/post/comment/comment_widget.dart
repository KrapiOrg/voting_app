import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/providers.dart';

import 'avatar.dart';
import 'content_widget.dart';
import 'owner.dart';

class CommentWidget extends HookConsumerWidget {
  const CommentWidget({
    super.key,
    required this.comment,
  });

  final KComment comment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
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
