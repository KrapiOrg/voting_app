import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';
import 'package:voting_app/providers.dart';

import '../models/user/user.dart';

class AuthManager extends StateNotifier<AuthState> {
  AuthManager(this.ref) : super(const AuthState.unInitialized()) {
    _initialize();
  }
  static const _localDB = FlutterSecureStorage();
  final Ref ref;

  void _initialize() async {
    final storedUser = await _localDB.read(key: 'user');

    if (storedUser == null) {
      state = const AuthState.signedOut();
    } else {
      final user = KUser.fromJson(jsonDecode(storedUser));
      state = AuthState.signedIn(user);
    }
  }

  void signIn(String id) async {
    final db = ref.watch(dbProvider);

    try {
      final response = await db.collection('users').getOne(id);
      final user = KUser.fromJson(response.toJson());
      await _localDB.write(key: 'user', value: jsonEncode(user.toJson()));
      state = AuthState.signedIn(user);
    } catch (_, __) {
      state = const AuthState.error('You are not registered for this election');
      rethrow;
    }
  }

  void signOut() async {
    await _localDB.delete(key: 'user');
    state = const AuthState.signedOut();
  }
}

final userProvider = Provider<KUser>((_) => throw UnimplementedError());

final authManagerProvider = StateNotifierProvider<AuthManager, AuthState>(
  (ref) => AuthManager(ref),
  dependencies: [dbProvider],
);
