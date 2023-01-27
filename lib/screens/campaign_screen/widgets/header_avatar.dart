import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignHeaderAvatar extends StatelessWidget {
  const CampaignHeaderAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: 30.w,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: CircleAvatar(
          minRadius: 1.sw > 680 ? 75 : 50,
          maxRadius: 1.sw > 680 ? 75 : 50,
          foregroundImage: const NetworkImage(
            'https://picsum.photos/200/200',
          ),
        ),
      ),
    );
  }
}
