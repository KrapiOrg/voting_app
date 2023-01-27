import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voting_app/models/user/user.dart';

class CommentOwner extends StatelessWidget {
  const CommentOwner({
    Key? key,
    required this.owner,
  }) : super(key: key);

  final KUser owner;
  @override
  Widget build(BuildContext context) {
    return Text(
      '${owner.firstName} ${owner.lastName} ',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 40.sp,
      ),
    );
  }
}
