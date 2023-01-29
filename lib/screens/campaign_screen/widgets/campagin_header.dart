import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';

import 'package:voting_app/providers.dart';
import 'package:voting_app/screens/campaign_screen/widgets/post/new_post_button.dart';

import '../../../models/campagin/campagin.dart';
import '../../../models/user/user.dart';
import 'bio.dart';
import 'header_avatar.dart';
import 'header_background.dart';

class CampaginHeader extends ConsumerWidget {
  const CampaginHeader({
    Key? key,
    required this.candidate,
    required this.campaign,
  }) : super(key: key);

  final KUser candidate;
  final KCampaign campaign;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loggedInUser = (ref.watch(authManagerProvider) as AuthStateSignedIn).user;
    final detailsFuture = ref.watch(candidateDetailsProvider(candidate.id));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 0.30.sh,
          child: Stack(
            children: [
              CampaignHeaderBackground(campaignId: campaign.id),
              CampaignHeaderAvatar(candidateId: candidate.id),
            ],
          ),
        ),
        50.verticalSpace,
        Text(
          '${candidate.firstName} ${candidate.lastName}',
          style: GoogleFonts.poppins(
            fontSize: 100.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CandidateBio(detailsFuture: detailsFuture),
            if (candidate.id == loggedInUser.id) NewPostButton(candidate: candidate),
          ],
        ),
      ],
    );
  }
}
