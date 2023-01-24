
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'campaign_post.dart';

class CampaignPostsList extends StatelessWidget {
  const CampaignPostsList({
    Key? key,
    required this.postIds,
  }) : super(key: key);

  final List<String> postIds;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32).w,
          child: const Divider(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: postIds.length,
            (_, index) => Center(child: CampaginPost(postIds[index])),
          ),
        ),
      ],
    );
  }
}
