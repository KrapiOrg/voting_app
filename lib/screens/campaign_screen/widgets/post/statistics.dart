import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'comment/comments_count.dart';
import 'reaction/reactions_count.dart';

class PostStatistics extends StatelessWidget {
  const PostStatistics({
    Key? key,
    required this.ownerId,
    required this.postId,
  }) : super(key: key);

  final String ownerId;
  final String postId;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(context).style.copyWith(fontSize: 40.sp),
      child: Row(
        children: [
          ReactionsCount(ownerId: ownerId, postId: postId),
          10.horizontalSpace,
          CommentsCount(postId: postId),
        ],
      ),
    );
  }
}
