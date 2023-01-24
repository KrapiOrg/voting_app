import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readmore/readmore.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/screens/campaign_screen/widgets/post/actions.dart';

import 'temporal_details.dart';
import 'preview_comments.dart';
import 'statistics.dart';

class TextContentPost extends ConsumerWidget {
  const TextContentPost({
    Key? key,
    required this.text,
    required this.post,
  }) : super(key: key);

  final String text;
  final KPost post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faker = ref.watch(fakerProvider);
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 0).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReadMoreText(
            faker.lorem.sentences(10).join(),
            trimLines: 2,
            trimMode: TrimMode.Line,
            textAlign: TextAlign.justify,
            trimExpandedText: '  show less',
            trimCollapsedText: '  show more',
            moreStyle: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
            lessStyle: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
            style: GoogleFonts.poppins(
              fontSize: 60.sp,
            ),
          ),
          PostTemporalDetails(timestamp: post.timestamp),
          const Divider(),
          PostStatistics(post: post),
          const Divider(),
          const PostActions(),
          const Divider(),
          PreviewComments(postId: post.id),
        ],
      ),
    );
  }
}
