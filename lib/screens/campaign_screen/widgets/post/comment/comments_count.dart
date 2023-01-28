import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import 'comment_providers.dart';

class CommentsCount extends ConsumerWidget {
  const CommentsCount({
    Key? key,
    required this.postId,
  }) : super(key: key);

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentCount = ref.watch(commentCountProvider(postId));

    return Row(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: commentCount.when(
            data: (count) => Text('$count'),
            loading: () => Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: SizedBox(
                width: 0.02.sw,
                height: 0.03.sh,
                child: const Card(),
              ),
            ),
            error: (_, __) {
              print(_);
              print(__);
              return const Text('-1');
            },
          ),
        ),
        3.horizontalSpace,
        Text(
          'Comments',
          style: GoogleFonts.poppins(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
