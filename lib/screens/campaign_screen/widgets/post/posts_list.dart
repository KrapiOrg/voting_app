import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
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
    return PagedSliverList<DateTime, KPost>(
      pagingController: posts,
      builderDelegate: PagedChildBuilderDelegate<KPost>(
        itemBuilder: (_, item, __) => CampaginPost(item),
        animateTransitions: true,
        newPageProgressIndicatorBuilder: (context) => const SizedBox(),
      ),
    );
  }
}
