
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KVoteLogo extends StatelessWidget {
  const KVoteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'k-vote-logo-hero',
      child: SvgPicture.asset(
        'assets/svg/logo_edited.svg',
      ),
    );
  }
}