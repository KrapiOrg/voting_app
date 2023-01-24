import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import '../../models/campagin/campagin.dart';

final campaignProvider = StreamProvider.autoDispose.family<KCampaign, String>(
  (ref, userId) async* {
    final db = Supabase.instance.client;

    try {
      final stream = db.from('campaigns').stream(primaryKey: ['id']).limit(1).eq('id', userId);
      await for (final change in stream) {
        yield KCampaign.fromJson(change.first);
      }
    } catch (e, st) {
      print(e.toString());
      print(st.toString());
      rethrow;
    }
  },
);
