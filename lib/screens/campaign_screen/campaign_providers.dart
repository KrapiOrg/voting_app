import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/models/campagin/campagin.dart';
import 'package:voting_app/providers.dart';

final campaignProvider = FutureProvider.autoDispose.family<KCampaign, String>(
  (ref, candidateId) async {
    final db = ref.watch(dbProvider);
    try {
      final model = await db.collection('campaigns').getFirstListItem('candidate_id = "$candidateId"');

      return KCampaign.fromJson(model.toJson());
    } catch (_) {
      rethrow;
    }
  },
);
