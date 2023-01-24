import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CampaignPostReactionsCount extends StatelessWidget {
  const CampaignPostReactionsCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(context).style.copyWith(
            fontSize: 35.sp,
          ),
      child: Row(
        children: [
          const Text('1000'),
          3.horizontalSpace,
          Text(
            'Reacts',
            style: GoogleFonts.poppins(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
