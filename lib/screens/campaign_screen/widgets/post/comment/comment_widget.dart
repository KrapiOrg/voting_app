import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';
import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/providers.dart';

import 'avatar.dart';
import 'content_widget.dart';
import 'delete_comment_button.dart';
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
    final ownerFuture = ref.watch(userFromIdProvider(comment.commenterId));
    final loggedInUser = (ref.watch(authManagerProvider) as AuthStateSignedIn).user;

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: ownerFuture.when(
              data: (owner) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommentAvatar(owner: owner),
                    CommentOwner(owner: owner),
                    const Spacer(),
                    if (loggedInUser.id == comment.commenterId) DeleteCommentButton(comment: comment),
                  ],
                );
              },
              loading: () => const SizedBox(),
              error: (_, __) => const SizedBox(),
            ),
          ),
          CommentContentWidget(content: comment.content)
        ],
      ),
    );
  }
}
