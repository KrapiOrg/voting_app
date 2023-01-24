import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/models/user/user.dart';

class CommentAvatar extends StatelessWidget {
  const CommentAvatar({
    Key? key,
    required this.owner,
  }) : super(key: key);

  final AsyncValue<Option<KUser>> owner;

  @override
  Widget build(BuildContext context) {
    final personIcon = Icon(
      Icons.person,
      size: 75.r,
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 60.r,
        child: owner.when(
          data: (user) {
            return user.fold(
              () => personIcon,
              (a) => personIcon, // TODO: add real profile picture
            );
          },
          error: (_, __) => personIcon,
          loading: () => personIcon,
        ),
      ),
    );
  }
}