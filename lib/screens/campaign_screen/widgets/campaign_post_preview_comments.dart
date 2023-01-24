
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voting_app/screens/campaign_screen/campaign_providers.dart';

import 'comment_widget.dart';

class CampaignPostPreviewComments extends ConsumerWidget {
  const CampaignPostPreviewComments({
    super.key,
    required this.postId,
  });

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final previewCommentsStream = ref.watch(previewCommentsProvider(postId));
    return previewCommentsStream.when(
      data: (comments) {
        if (comments.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'There are no comments on this post',
                style: GoogleFonts.poppins(
                  fontSize: 30.sp,
                ),
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0).h,
          child: Column(
            children: List.generate(
              comments.length,
              (index) => CommentWidget(comment: comments[index]),
            ),
          ),
        );
      },
      error: (_, __) {
        print(_);
        print(__);
        return const SizedBox();
      },
      loading: () => const SizedBox(),
    );
  }
}
