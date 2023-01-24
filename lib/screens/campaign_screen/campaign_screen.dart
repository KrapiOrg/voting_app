import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:voting_app/constants/colours.dart';

import '../../models/user/user.dart';
import '../../providers.dart';
import 'campaign_providers.dart';
import 'widgets/campagin_header.dart';
import 'widgets/post/posts_list.dart';

class _CandidateCampaignScreen extends ConsumerWidget {
  const _CandidateCampaignScreen(this.candidate, {super.key});

  final KUser candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignStream = ref.watch(campaignProvider(candidate.identity));

    return CustomScrollView(
      slivers: [
        campaignStream.when(
          data: (campaign) {
            final postIds = campaign.postIds;
            return MultiSliver(
              children: [
                CampaginHeader(candidate: candidate, campaign: campaign),
                postIds.isEmpty ? const CampaginHasNoPostsWidget() : CampaignPostsList(postIds: postIds),
              ],
            );
          },
          loading: () => SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 500).h,
              child: const Center(child: CircularProgressIndicator()),
            ),
          ),
          error: (_, __) => SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 500).h,
              child: const Text(
                'This candidate does not have a campaign',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CampaginHasNoPostsWidget extends StatelessWidget {
  const CampaginHasNoPostsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 500).h,
      child: const Text(
        'This campagin has no posts',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CampaignScreen extends ConsumerWidget {
  const CampaignScreen({super.key, required this.identity});

  final String identity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final candidateFuture = ref.watch(userFromIdProvider(identity));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fillColour1,
      ),
      body: candidateFuture.when(
        data: (candidate) => candidate.fold<Widget>(
          () => Center(child: Text('$identity does not exist')),
          _CandidateCampaignScreen.new,
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => Center(child: Text(_.toString())),
      ),
    );
  }
}