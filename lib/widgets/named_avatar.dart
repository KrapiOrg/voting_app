import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voting_app/models/user/user.dart';

import '../constants/colours.dart';

class NamedAvatar extends StatelessWidget {
  const NamedAvatar({
    Key? key,
    required this.user,
    this.radius,
    this.iconSize,
    this.fontSize,
  }) : super(key: key);

  final KUser user;
  final double? radius;
  final double? iconSize;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: fillColour1,
              radius: radius,
              child: Icon(
                Icons.person,
                size: iconSize,
              ),
            ),
            AutoSizeText(
              '${user.firstName} ${user.lastName}',
              maxLines: 1,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
