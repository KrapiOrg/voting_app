import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'comment/comment_providers.dart';
import 'comment/comment_widget.dart';

class PreviewComments extends HookConsumerWidget {
  const PreviewComments({
    super.key,
    required this.postId,
  });

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comments = ref.watch(previewCommentsProvider(postId));

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: comments.when(
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
        error: (_, __) => const SizedBox(),
        loading: () => const SizedBox(),
      ),
    );
  }
}
