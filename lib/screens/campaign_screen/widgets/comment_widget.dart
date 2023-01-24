import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:shimmer/shimmer.dart';

import '../../../models/comment/comment.dart';
import '../../../providers.dart';
import '../campaign_providers.dart';

class CommentWidget extends ConsumerWidget {
  const CommentWidget({
    super.key,
    required this.comment,
  });

  final KComment comment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final owner = ref.watch(userFromIdProvider(comment.ownerId));
    final commentContent = ref.watch(commentContentProvider(comment.id));

    final personIcon = Icon(
      Icons.person,
      size: 75.r,
    );

    final avatar = Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 60.r,
        child: owner.when(
          data: (user) {
            return user.fold(
              () => personIcon,
              (a) => personIcon, // TODO: add real profile picture
            );
          },
          error: (_, __) => personIcon,
          loading: () => personIcon,
        ),
      ),
    );

    final ownerName = owner.when(
      data: (user) {
        return user.fold(
          () => 'Unknown User',
          (a) => '${a.firstName} ${a.lastName} ',
        );
      },
      error: (_, __) => 'Unknown User',
      loading: () => '',
    );

    return Card(
      child: Column(
        children: [
          Row(
            children: [
              avatar,
              Text(
                ownerName,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp,
                ),
              ),
            ],
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: commentContent.when(
              data: (content) => content.when(
                text: (text) => Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0).h,
                  child: Card(
                    margin: EdgeInsets.zero,
                    color: const Color(0xffffebee),
                    child: Container(
                      padding: const EdgeInsets.all(8.0).w,
                      alignment: Alignment.centerLeft,
                      child: ReadMoreText(
                        text,
                        trimLines: 2,
                        style: GoogleFonts.poppins(
                          fontSize: 35.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                image: (link) => const SizedBox(),
              ),
              loading: () {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0).h,
                    child: Card(
                      margin: EdgeInsets.zero,
                      color: const Color(0xffffebee),
                      child: Container(
                        padding: const EdgeInsets.all(8.0).w,
                        alignment: Alignment.centerLeft,
                        height: 100,
                      ),
                    ),
                  ),
                );
              },
              error: (_, __) {
                print(_);
                print(__);
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
