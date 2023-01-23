import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/constants/colours.dart';
import 'package:voting_app/widgets/kvote_explainer.dart';
import 'package:voting_app/widgets/text_button.dart';
import 'package:voting_app/widgets/text_field.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final electionIdController = useTextEditingController();
    ref.listen(
      authManagerProvider,
      (before, after) {
        after.whenOrNull(
          error: (errorText) {
            ScaffoldMessenger.maybeOf(context)?.showSnackBar(
              SnackBar(
                content: Text(
                  errorText,
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
    return Scaffold(
      backgroundColor: backGroundColour,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fillColour1,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const KVoteExplainer(),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: fillColour1,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                child: ElectionIdInputField(controller: electionIdController),
              ),
              SizedBox(height: 0.01.sh),
              KTextButton(
                width: 400,
                text: 'Sign In',
                onTap: () async {
                  final manager = ref.read(authManagerProvider.notifier);
                  manager.signIn(electionIdController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
