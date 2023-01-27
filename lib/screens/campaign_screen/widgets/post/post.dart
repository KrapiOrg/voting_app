import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';
import 'package:voting_app/models/post/post.dart';

import 'actions.dart';
import 'content_widget.dart';
import 'delete_post_button.dart';
import 'preview_comments.dart';
import 'statistics.dart';
import 'temporal_details.dart';

class CampaginPost extends ConsumerWidget {
  const CampaginPost(
    this.post, {
    this.showPreviewComments = true,
    this.showViewCommentsAction = true,
    this.margin,
    super.key,
  });

  final KPost post;
  final bool showPreviewComments;
  final bool showViewCommentsAction;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loggedInUser = (ref.watch(authManagerProvider) as AuthStateSignedIn).user;
    return SizedBox(
      width: .75.sw,
      child: Card(
        margin: margin,
        child: Padding(
          padding: const EdgeInsets.all(32.0).h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostContentWidget(postId: post.id),
              Row(
                children: [
                  PostTemporalDetails(timestamp: post.timestamp),
                  const Spacer(),
                  if (loggedInUser.identity == post.ownerId) DeletePostButton(post: post),
                ],
              ),
              const Divider(),
              PostStatistics(ownerId: post.ownerId, postId: post.id),
              const Divider(),
              PostActions(
                post: post,
                ownerId: post.ownerId,
                showViewCommentsAction: showViewCommentsAction,
              ),
              if (showPreviewComments) const Divider(),
              if (showPreviewComments) PreviewComments(postId: post.id),
            ],
          ),
        ),
      ),
    );
  }
}

