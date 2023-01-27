import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    final ownerFuture = ref.watch(userFromIdProvider(comment.ownerId));

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedSwitcher(
            duration: 500.ms,
            child: ownerFuture.when(
              data: (owner) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommentAvatar(owner: owner),
                      CommentOwner(owner: owner),
                    ],
                  ),
                );
              },
              loading: () => const SizedBox(),
              error: (_, __) => const SizedBox(),
            ),
          ),
          CommentContentWidget(commentId: comment.id)
        ],
      ),
    );
  }
}
