import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readmore/readmore.dart';

import 'package:voting_app/providers.dart';

class TextPostContent extends ConsumerWidget {
  const TextPostContent(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faker = ref.watch(fakerProvider);
    return ReadMoreText(
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
    );
  }
}
