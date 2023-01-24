import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CommentLoading extends StatelessWidget {
  const CommentLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0).h,
        child: Card(
          margin: EdgeInsets.zero,
          color: const Color(0xffffebee),
          child: Container(
            padding: const EdgeInsets.all(8.0).w,
            alignment: Alignment.centerLeft,
            height: 100,
          ),
        ),
      ),
    );
  }
}
