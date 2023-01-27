import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voting_app/models/user/user.dart';

import 'new_post_dialog.dart';

class NewPostButton extends StatelessWidget {
  const NewPostButton({
    super.key,
    required this.candidate,
  });

  final KUser candidate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.15.sw,
      height: 0.05.sh,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(padding: EdgeInsets.zero),
        label: AutoSizeText(
          'Post',
          style: GoogleFonts.poppins(),
          minFontSize: 50.sp.roundToDouble(),
        ),
        icon: Icon(
          Icons.post_add,
          size: 50.sp,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => NewPostDialog(ownerId: candidate.identity),
          );
        },
      ),
    );
  }
}
