import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/constants/colours.dart';

class KTextButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  final Icon? icon;

  const KTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
  }) : icon = null;

  const KTextButton.icon({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextButton.styleFrom(
      foregroundColor: buttonTextColour,
      backgroundColor: fillColour1,
      textStyle: buttonTextStyle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return SizedBox(
      width: width,
      height: 60,
      child: icon == null
          ? TextButton(
              onPressed: onTap,
              style: style,
              child: AutoSizeText(
                text,
                style: buttonTextStyle,
                maxLines: 1,
                minFontSize: 50.sp.truncateToDouble(),
              ),
            )
          : TextButton.icon(
              icon: icon!,
              label: AutoSizeText(
                text,
                style: buttonTextStyle,
                maxLines: 1,
                minFontSize: 50.sp.truncateToDouble(),
              ),
              onPressed: onTap,
              style: style,
            ),
    );
  }
}
