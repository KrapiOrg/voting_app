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
final headerBackgroundProvider = FutureProvider.autoDispose.family<String, String>(
  (ref, campaignId) async {
    await Future.delayed(const Duration(seconds: 1));
    final db = ref.watch(dbProvider);
    final record = await db.collection('campaigns').getOne(campaignId);
    final fileName = record.getStringValue('campaign_background');

    if (fileName.isEmpty) {
      return 'https://picsum.photos/id/545/1920/600';
    }

    final url = db.getFileUrl(record, fileName);
    return url.toString();
  },
);
