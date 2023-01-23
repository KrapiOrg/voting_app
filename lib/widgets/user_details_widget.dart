import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colours.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({
    Key? key,
    required this.labelText,
    required this.text,
    this.padding,
  }) : super(key: key);

  final String labelText;
  final String text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: labelTextStyle2,
          ),
          10.verticalSpace,
          Container(
            width: 1.sw,
            decoration: BoxDecoration(
              color: fillColour2,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(16).w,
            child: SelectableText(
              text,
              style: labelTextStyle1,
              maxLines: 1,
            ),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }
}
