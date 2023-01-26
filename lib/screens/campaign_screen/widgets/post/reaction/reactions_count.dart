import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import 'recation_providers.dart';

class ReactionsCount extends ConsumerWidget {
  const ReactionsCount({
    Key? key,
    required this.postId,
    required this.ownerId,
  }) : super(key: key);

  final String ownerId;
  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentCount = ref.watch(postReactionProvider(ReactionFamily(ownerId, postId)));

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: commentCount.when(
        data: (_, count) => Row(
          children: [
            Text('$count'),
            3.horizontalSpace,
            Text(
              count == 1 ? 'Reaction' : 'Reactions',
              style: GoogleFonts.poppins(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        ),
        loading: (_, __) => Row(
          children: [
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: SizedBox(
                width: 0.02.sw,
                height: 0.03.sh,
                child: const Card(),
              ),
            ),
            3.horizontalSpace,
            Text(
              'Reactions',
              style: GoogleFonts.poppins(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
