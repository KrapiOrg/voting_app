import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/campagin/campagin.dart';
import '../../../models/user/user.dart';
import '../../../widgets/named_avatar.dart';

class CampaginHeader extends StatelessWidget {
  const CampaginHeader({
    Key? key,
    required this.candidate,
    required this.campaign,
  }) : super(key: key);

  final KUser candidate;
  final KCampaign campaign;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3.sh,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          NamedAvatar(
            user: candidate,
            radius: 200.r,
            iconSize: 200.r,
            fontSize: 75.sp,
          ),
          const VerticalDivider(),
          Expanded(
            child: SizedBox(
              height: 1.sh,
              child: Card(
                child: Center(
                  child: Text(
                    campaign.description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 100.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
