import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colours.dart';
import 'kvote_logo.dart';

class KVoteExplainer extends StatelessWidget {
  const KVoteExplainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const KVoteLogo(),
        Text(
          'K-Vote',
          style: logoTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 0.02.sh),
        Text(
          'What is K-Vote?',
          style: headerTextStyle,
          textAlign: TextAlign.center,
        ),
        Text(
          'K- Vote is an elections platform you can use\n to vote securely and remotely from your\n smartphone.',
          style: paragraphTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 0.02.sh),
      ],
    );
  }
}
