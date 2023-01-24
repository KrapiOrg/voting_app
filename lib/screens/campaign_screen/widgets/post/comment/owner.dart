import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voting_app/models/user/user.dart';

class CommentOwner extends StatelessWidget {
  const CommentOwner({
    Key? key,
    required this.owner,
  }) : super(key: key);

  final AsyncValue<Option<KUser>> owner;
  @override
  Widget build(BuildContext context) {
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
    return Text(
      ownerName,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 40.sp,
      ),
    );
  }
}
