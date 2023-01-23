import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';
import 'package:voting_app/screens/campaign_screen.dart';
import 'package:voting_app/screens/candidate_list_screen.dart';
import 'package:voting_app/utils/go_router_refresh_stream.dart';

import 'screens/home_screen.dart';
import 'screens/signin_screen.dart';
import 'screens/splash.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    final authManager = ref.watch(authManagerProvider.notifier);

    return GoRouter(
      debugLogDiagnostics: true,
      refreshListenable: GoRouterRefreshStream(
        authManager.stream.where(
          (event) => event.maybeWhen(
            error: (_) => false,
            orElse: () => true,
          ),
        ),
      ),
      redirect: (context, gostate) {
        final authState = ref.read(authManagerProvider);

        return authState.whenOrNull(
          unInitialized: () => '/waiting',
          signedIn: (_) => gostate.location.contains('/home') ? null : '/home',
          signedOut: () => gostate.location != '/' && gostate.location != '/signIn' ? '/' : null,
        );
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'splash',
          builder: (_, __) => const SplashScreen(),
          routes: [
            GoRoute(
              path: 'signIn',
              name: 'signIn',
              builder: (_, __) => const SignInScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (_, gostate) {
            final authState = ref.read(authManagerProvider) as AuthStateSignedIn;
            final user = authState.user;
            return ProviderScope(
              overrides: [
                userProvider.overrideWithValue(user),
              ],
              child: const HomeScreen(),
            );
          },
          routes: [
            GoRoute(
              path: 'candidates',
              name: 'candidates',
              builder: (_, __) {
                final authState = ref.read(authManagerProvider) as AuthStateSignedIn;
                final user = authState.user;
                return ProviderScope(
                  overrides: [
                    userProvider.overrideWithValue(user),
                  ],
                  child: const CandidateListScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'campaigns/:identity',
                  builder: (_, gostate) => CampaignScreen(identity: gostate.params['identity']!),
                ),
              ],
            )
          ],
        ),
        GoRoute(
          path: '/waiting',
          name: 'waiting',
          builder: (_, __) => const WaitingScreen(),
        ),
      ],
    );
  },
  dependencies: [authManagerProvider],
);

class WaitingScreen extends ConsumerWidget {
  const WaitingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      authManagerProvider,
      (previous, next) {
        next.mapOrNull(
          signedIn: (state) {
            final router = ref.read(routerProvider);
            router.go('/home');
          },
          signedOut: (_) {
            final router = ref.read(routerProvider);
            router.go('/');
          },
        );
      },
    );
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
