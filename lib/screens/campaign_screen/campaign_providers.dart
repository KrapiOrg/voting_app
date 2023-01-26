import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import '../../models/campagin/campagin.dart';

final campaignProvider = FutureProvider.autoDispose.family<KCampaign, String>(
  (ref, userId) async {
    final db = Supabase.instance.client;

    try {
      final response = await db.from('campaigns').select<Map<String, dynamic>>('*').match({'id': userId}).single();
      return KCampaign.fromJson(response);
    } catch (e, st) {
      print(e.toString());
      print(st.toString());
      rethrow;
    }
  },
);
