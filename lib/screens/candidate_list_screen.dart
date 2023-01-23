import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voting_app/constants/colours.dart';
import 'package:voting_app/router.dart';
import 'package:voting_app/widgets/text_button.dart';

import '../models/user/user.dart';
import '../widgets/named_avatar.dart';

final candidatesProvider = FutureProvider.autoDispose<List<KUser>>(
  (ref) async {
    final db = Supabase.instance.client;

    final responses = await db.from('usersview').select<List<Map<String, dynamic>>>('*').eq('role', 'candidate');

    final users = <KUser>[];
    for (final element in responses) {
      users.add(KUser.fromJson(element));
    }

    return users;
  },
);

class CandidateListScreen extends ConsumerWidget {
  const CandidateListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final candidatesFuture = ref.watch(candidatesProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fillColour1,
        title: const Text('Candidates'),
      ),
      body: candidatesFuture.when(
        data: (candidates) {
          return Center(
            child: SizedBox(
              width: 0.4.sw,
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0).h,
                itemCount: candidates.length,
                itemBuilder: (context, index) {
                  final candidate = candidates[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      NamedAvatar(
                        user: candidate,
                        radius: 200.r,
                        iconSize: 300.r,
                        fontSize: 75.sp,
                      ),
                      KTextButton(
                        onTap: () {
                          final router = ref.read(routerProvider);
                          router.push('/home/candidates/campaigns/${candidate.identity}');
                        },
                        text: 'Campaign',
                      ),
                      10.verticalSpace,
                      KTextButton(
                        onTap: () {},
                        text: 'Vote',
                      ),
                      if (index != candidates.length - 1) 50.verticalSpace,
                    ],
                  );
                },
              ),
            ),
          );
        },
        error: (_, __) => Center(child: Text(_.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
