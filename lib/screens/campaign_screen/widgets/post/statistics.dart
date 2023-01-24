import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/models/post/post.dart';

import 'comment/comments_count.dart';
import 'reactions_count.dart';

class PostStatistics extends StatelessWidget {
  const PostStatistics({
    Key? key,
    required this.post,
  }) : super(key: key);

  final KPost post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CampaignPostReactionsCount(),
        10.horizontalSpace,
        CommentsCount(
          postId: post.id,
        ),
      ],
    );
  }
}
