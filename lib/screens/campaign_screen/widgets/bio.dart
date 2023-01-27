import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:voting_app/models/candidate_details/candidate_details.dart';

class CandidateBio extends ConsumerWidget {
  const CandidateBio({
    super.key,
    required this.detailsFuture,
  });

  final AsyncValue<CandidateDetails> detailsFuture;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedSwitcher(
      duration: 500.ms,
      child: detailsFuture.maybeWhen(
        data: (details) => SizedBox(
          width: 0.4.sw,
          child: AutoSizeText(
            details.bio,
            style: GoogleFonts.poppins(),
            textAlign: TextAlign.justify,
            minFontSize: 50.sp.roundToDouble(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        loading: () {
          return SizedBox(
            height: 0.1.sh,
            width: 0.4.sw,
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: const Card(),
            ),
          );
        },
        orElse: () => const SizedBox(),
      ),
    );
  }
}
