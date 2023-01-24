import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/post/post.dart';
import 'campaign_post_comments_count.dart';
import 'campaign_post_reactions_count.dart';

class CampaignPostStatistics extends StatelessWidget {
  const CampaignPostStatistics({
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
        CampaignPostCommentsCount(
          postId: post.id,
        ),
      ],
    );
  }
}
