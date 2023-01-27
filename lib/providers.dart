import 'package:faker/faker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import 'models/candidate_details/candidate_details.dart';
import 'models/user/user.dart';

final storageProvider = Provider<FlutterSecureStorage>(
  (_) => const FlutterSecureStorage(),
);

final fakerProvider = Provider<Faker>(
  (ref) => Faker(seed: DateTime.now().microsecondsSinceEpoch),
);

final userFromIdProvider = FutureProvider.autoDispose.family<KUser, String>(
  (ref, identity) async {
    try {
      final db = Supabase.instance.client;
      final response = await db
          .from('users')
          .select<Map<String, dynamic>>('*')
          .eq(
            'identity',
            identity,
          )
          .single();
      return KUser.fromJson(response);
    } catch (e, st) {
      print(e);
      print(st);
      rethrow;
    }
  },
);
final candidateDetailsProvider = FutureProvider.autoDispose.family<CandidateDetails, String>(
  (ref, identity) async {
    final db = Supabase.instance.client;

    try {
      final detailsResponse = await db
          .from('candidate_details')
          .select<Map<String, dynamic>>('*')
          .eq(
            'id',
            identity,
          )
          .single();
      return CandidateDetails.fromJson(detailsResponse);
    } catch (e, st) {
      print(e);
      print(st);
      rethrow;
    }
  },
);
