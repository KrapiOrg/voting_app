import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/widgets/text_button.dart';

import '../constants/colours.dart';
import '../router.dart';
import '../widgets/kvote_explainer.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: backGroundColour,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const KVoteExplainer(),
              KTextButton(
                text: 'Get Started',
                width: 0.2.sw,
                onTap: () {
                  final router = ref.read(routerProvider);
                  router.pushNamed('signIn');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
