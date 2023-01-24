import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';

import '../../../providers.dart';
import '../campaign_providers.dart';
import 'campaign_post_preview_comments.dart';
import 'campaign_post_statistics.dart';

class CampaginPost extends ConsumerWidget {
  const CampaginPost(this.postId, {super.key});

  final String postId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(postProvider(postId));
    final faker = ref.watch(fakerProvider);
    return post.when(
      data: (post) {
        return SizedBox(
          width: .75.sw,
          child: Card(
            child: post.content.when(
              text: (text) {
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0).h,
                        child: AutoSizeText(
                          DateFormat('hh:mm a · MMM dd, yy').format(post.timestamp),
                          style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 40.sp,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      const Divider(),
                      CampaignPostStatistics(post: post),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.comment,
                            color: Colors.blue,
                          ),
                          LikeButton(
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.favorite,
                                color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                              );
                            },
                          ),
                          const Icon(
                            Icons.add_comment,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      const Divider(),
                      CampaignPostPreviewComments(postId: postId),
                    ],
                  ),
                );
              },
              image: (link) => const SizedBox(),
            ),
          ),
        );
      },
      loading: () => Padding(
        padding: const EdgeInsets.only(top: 500).h,
        child: const Center(child: CircularProgressIndicator()),
      ),
      error: (_, __) => Center(child: Text(_.toString())),
    );
  }
}
