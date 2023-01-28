import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';
import 'package:voting_app/models/campagin/campagin.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/utils/paginator.dart';

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
    final posts = ref.watch(
      postsListProvider(
        DBPaginatorFamily<KPost>(
          campaign.id,
          KPost.fromJson,
        ),
      ),
    );
    final loggedInUser = (ref.watch(authManagerProvider) as AuthStateSignedIn).user;

    final noPostsWidget = Center(
      child: Text(
        campaign.id == loggedInUser.id ? 'You have no posts!' : 'Candidate has no new posts!',
        style: GoogleFonts.poppins(
          fontSize: 50.sp,
        ),
      ),
    );
    return PagedSliverList<int, KPost>(
      pagingController: posts,
      builderDelegate: PagedChildBuilderDelegate<KPost>(
        itemBuilder: (_, item, __) => CampaginPost(item),
        animateTransitions: true,
        newPageProgressIndicatorBuilder: (context) => const SizedBox(),
        firstPageProgressIndicatorBuilder: (context) => noPostsWidget,
        noItemsFoundIndicatorBuilder: (context) => noPostsWidget,
      ),
    );
  }
}
