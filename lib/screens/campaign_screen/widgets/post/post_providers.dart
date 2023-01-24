import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voting_app/models/post/post.dart';


final postProvider = FutureProvider.autoDispose.family<KPost, String>(
  (ref, postId) async {
    final db = Supabase.instance.client;

    final response = await db.from('posts').select<Map<String, dynamic>>(
      '''
      *,
      content:post_contents(*)
      ''',
    ).match({'id': postId}).single();
    return KPost.fromJson(response);
  },
);