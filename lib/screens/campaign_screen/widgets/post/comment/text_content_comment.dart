import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class TextContentComment extends StatelessWidget {
  const TextContentComment(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}