import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pocketbase/pocketbase.dart';

import 'models/candidate_details/candidate_details.dart';
import 'models/user/user.dart';

final storageProvider = Provider<FlutterSecureStorage>(
  (_) => const FlutterSecureStorage(),
);

final userFromIdProvider = FutureProvider.autoDispose.family<KUser, String>(
  (ref, id) async {
    final db = ref.watch(dbProvider);
    final model = await db.collection('users').getOne(id);
    return KUser.fromJson(model.toJson());
  },
);
final candidateDetailsProvider = FutureProvider.autoDispose.family<CandidateDetails, String>(
  (ref, identity) async {
    final db = ref.watch(dbProvider);

    final model = await db.collection('candidate_details').getFirstListItem('candidate_id="$identity"');
    return CandidateDetails.fromJson(model.toJson());
  },
);

final userAvatarProvider = FutureProvider.autoDispose.family<String, String>(
  (ref, userId) async {
    final db = ref.watch(dbProvider);

    final record = await db.collection('users').getOne(userId);
    final filename = record.getStringValue('profile_picture');
    final link = db.getFileUrl(record, filename).toString();
    if (link.isEmpty) {
      return 'https://picsum.photos/id/545/1920/600';
    }
    return link;
  },
);

final dbProvider = Provider((_) => PocketBase('http://127.0.0.1:8090'));
