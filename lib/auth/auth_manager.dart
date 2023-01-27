import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider, AuthState;
import 'package:voting_app/models/auth_state/auth_state.dart';

import '../models/user/user.dart';

class AuthManager extends StateNotifier<AuthState> {
  AuthManager() : super(const AuthState.unInitialized()) {
    _initialize();
  }
  static const _localDB = FlutterSecureStorage();
  static final _remoteDB = Supabase.instance.client;

  void _initialize() async {
    // await _localDB.deleteAll();
    final storedUser = await _localDB.read(key: 'user');

    if (storedUser == null) {
      state = const AuthState.signedOut();
    } else {
      final user = KUser.fromJson(jsonDecode(storedUser));
      state = AuthState.signedIn(user);
    }
  }

  void signIn(String electionId) async {
    final response = await _remoteDB
        .from('users')
        .select<Map<String, dynamic>?>(
          '*',
        )
        .eq('identity', electionId)
        .maybeSingle();

    if (response == null) {
      state = const AuthState.error('You are not registered for this election');
    } else {
      print(response);
      final user = KUser.fromJson(response);
      await _localDB.write(key: 'user', value: jsonEncode(user.toJson()));
      state = AuthState.signedIn(user);
    }
  }

  void signOut() async {
    await _localDB.delete(key: 'user');
    state = const AuthState.signedOut();
  }
}

final userProvider = Provider<KUser>((_) => throw UnimplementedError());

final authManagerProvider = StateNotifierProvider<AuthManager, AuthState>((ref) => AuthManager());
