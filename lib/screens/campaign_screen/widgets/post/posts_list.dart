import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:voting_app/models/campagin/campagin.dart';
import 'package:voting_app/models/post/post.dart';

import 'post.dart';
import 'post_providers.dart';

class CampaignPostsList extends ConsumerWidget {
  const CampaignPostsList({
    Key? key,
    required this.campaign,
  }) : super(key: key);

  final KCampaign campaign;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsListProvider(campaign.id));
    return MultiSliver(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32).w,
          child: const Divider(),
        ),
        PagedSliverList<DateTime, KPost>(
          pagingController: posts,
          builderDelegate: PagedChildBuilderDelegate<KPost>(
            itemBuilder: (_, item, __) => CampaginPost(
              item,
              margin: const EdgeInsets.all(32.0).w,
            ),
            animateTransitions: true,
            newPageProgressIndicatorBuilder: (context) => const SizedBox(),
          ),
        ),
      ],
    );
  }
}
