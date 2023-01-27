import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignHeaderBackground extends StatelessWidget {
  const CampaignHeaderBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8.r),
          image: const DecorationImage(
            image: NetworkImage(
              'https://picsum.photos/id/545/1920/600',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
