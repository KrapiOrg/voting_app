import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/screens/campaign_screen/widgets/post/comment/view_post_comments_action.dart';

import 'comment/add_comment_action.dart';
import 'reaction/action.dart';

class PostActions extends ConsumerWidget {
  const PostActions({
    Key? key,
    required this.post,
    required this.ownerId,
    required this.showViewCommentsAction,
  }) : super(key: key);

  final KPost post;
  final String ownerId;
  final bool showViewCommentsAction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (showViewCommentsAction)
          ViewPostCommentsAction(
            post: post,
            ownerId: ownerId,
          ),
        ReactionAction(
          postId: post.id!,
          ownerId: ownerId,
        ),
        AddCommentAction(
          postId: post.id!,
          ownerId: ownerId,
        ),
      ],
    );
  }
}
