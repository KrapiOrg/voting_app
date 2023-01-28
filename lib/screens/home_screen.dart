import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/constants/colours.dart';
import 'package:voting_app/router.dart';
import 'package:voting_app/widgets/named_avatar.dart';
import 'package:voting_app/widgets/text_button.dart';

import '../widgets/user_details_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      backgroundColor: backGroundColour,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fillColour1,
      ),
      body: Center(
        child: SizedBox(
          width: 0.4.sw,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NamedAvatar(
                  user: user,
                  radius: 200.r,
                  iconSize: 300.r,
                  fontSize: 75.sp,
                ),
                UserDetailsWidget(
                  labelText: 'Your Election ID:',
                  text: user.id,
                ),
                Row(
                  children: [
                    Expanded(
                      child: UserDetailsWidget(
                        labelText: 'Role:',
                        text: user.map(
                          voter: (_) => 'voter',
                          candidate: (_) => 'candidate',
                        ),
                        padding: const EdgeInsets.only(right: 10).w,
                      ),
                    ),
                    const Expanded(
                      child: UserDetailsWidget(
                        labelText: 'Remaining Votes:',
                        text: '1',
                      ),
                    ),
                  ],
                ),
                KTextButton(
                  width: 0.4.sw,
                  text: 'Candidates',
                  onTap: () => ref.read(routerProvider).goNamed('candidates'),
                ),
                10.verticalSpace,
                KTextButton.icon(
                  width: 0.4.sw,
                  text: 'Sign out',
                  icon: const Icon(Icons.logout),
                  onTap: () {
                    final manager = ref.read(authManagerProvider.notifier);
                    manager.signOut();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
