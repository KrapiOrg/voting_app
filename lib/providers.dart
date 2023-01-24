import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import 'models/user/user.dart';

final storageProvider = Provider<FlutterSecureStorage>(
  (_) => const FlutterSecureStorage(),
);

final fakerProvider = Provider<Faker>(
  (ref) => Faker(seed: DateTime.now().microsecondsSinceEpoch),
);

final userFromIdProvider = FutureProvider.autoDispose.family<Option<KUser>, String>(
  (ref, identity) async {
    final db = Supabase.instance.client;

    try {
      final response =
          await db.from('usersview').select<Map<String, dynamic>?>('*').match({'identity': identity}).maybeSingle();

      if (response == null) {
        return none();
      }
      print(response);
      return Some(KUser.fromJson(response));
    } catch (e) {
      rethrow;
    }
  },
);
