import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../content/kcontent.dart';
import '../../models/campagin/campagin.dart';
import '../../models/comment/comment.dart';
import '../../models/post/post.dart';

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

final commentCountProvider = FutureProvider.autoDispose.family<String, String>(
  (ref, postId) async {
    final db = Supabase.instance.client;
    final response = await db.from('comments').select('id', const FetchOptions(count: CountOption.exact));
    return response.count.toString();
  },
);

final commentsStreamProvider = StreamProvider.autoDispose.family<KComment, String>(
  (ref, parentId) async* {
    final controller = StreamController<Map<String, dynamic>>.broadcast();

    final db = Supabase.instance.client;
    final channel = db.channel('public:comments').on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: 'INSERT',
        schema: 'public',
        table: 'comments',
        filter: 'parent_id=eq.$parentId',
      ),
      (payload, [ref]) {
        controller.sink.add(payload);
      },
    );
    channel.subscribe();

    ref.onDispose(() async {
      await db.removeChannel(channel);
    });

    await for (final event in controller.stream) {
      yield KComment.fromJson(event);
    }
  },
);

final commentContentProvider = FutureProvider.autoDispose.family<KContent, String>(
  (ref, id) async {
    final db = Supabase.instance.client;
    final response = await db.from('comment_contents').select<Map<String, dynamic>>('*').match({'id': id}).single();
    return KContent.fromJson(response);
  },
);

final previewCommentsProvider = StreamProvider.autoDispose.family<List<KComment>, String>(
  (ref, parentId) async* {
    final db = Supabase.instance.client;
    print(parentId);
    final stream = db.from('comments').stream(primaryKey: ['id']).eq('parent_id', parentId).limit(3);

    await for (final commentResponses in stream) {
      final comments = <KComment>[];
      for (final comment in commentResponses) {
        comments.add(KComment.fromJson(comment));
      }
      yield comments;
    }
  },
);
