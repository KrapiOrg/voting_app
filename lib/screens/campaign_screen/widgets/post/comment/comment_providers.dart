import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/models/content/kcontent.dart';

final commentCountProvider = FutureProvider.autoDispose.family<String, String>(
  (ref, postId) async {
    final db = Supabase.instance.client;
    final response = await db.from('comments').select('id', const FetchOptions(count: CountOption.exact));
    return response.count.toString();
  },
);

class CommentsListController extends PagingController<DateTime, KComment> {
  final String parentId;

  static final db = Supabase.instance.client;
  static final epoch = DateTime.fromMillisecondsSinceEpoch(1640979000000);

  late final RealtimeChannel commentContentsChannel;
  late final RealtimeChannel commentsChannel;

  CommentsListController(this.parentId) : super(firstPageKey: epoch) {
    addPageRequestListener((pageKey) {
      fetch(pageKey);
    });
    commentContentsChannel = db.channel('public:comment_contents:post_id=eq.$parentId').on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: 'INSERT',
        schema: 'public',
        table: 'comment_contents',
        filter: 'post_id=eq.$parentId',
      ),
      (payload, [ref]) async {
        final content = KContent.fromJson(payload['new']);

        final commentResponse = await db
            .from('comments')
            .select<Map<String, dynamic>>(
              '*',
            )
            .match({'id': content.id}).single();

        final comment = KComment.fromJson(commentResponse);
        appendPage([comment], comment.timestamp);
      },
    )..subscribe();

    commentsChannel = db.channel('public:comments:post_id=eq.$parentId').on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: 'DELETE',
        schema: 'public',
        table: 'comments',
        filter: 'post_id=eq.$parentId',
      ),
      (payload, [ref]) {
        itemList?.removeWhere((e) => e.id == payload['old']['id']);
        notifyListeners();
      },
    )..subscribe();
  }

  void fetch(DateTime key) async {
    try {
      final responses = await db
          .from('comments')
          .select<List<Map<String, dynamic>>>('*')
          .eq('post_id', parentId)
          .filter('timestamp', 'gt', key)
          .limit(10)
          .order('timestamp', ascending: true);

      final comments = <KComment>[];

      for (final response in responses) {
        comments.add(KComment.fromJson(response));
      }

      if (comments.isNotEmpty) {
        appendPage(comments, comments.last.timestamp);
      }
    } catch (e, st) {
      print(e);
      print(st);
    }
  }

  @override
  void dispose() async {
    await db.removeChannel(commentsChannel);
    await db.removeChannel(commentContentsChannel);
    super.dispose();
  }
}

final commentsListProvider = Provider.autoDispose.family<CommentsListController, String>(
  (ref, postId) {
    final controller = CommentsListController(postId);
    ref.onDispose(() {
      controller.dispose();
    });
    return controller;
  },
);

final commentContentProvider = FutureProvider.autoDispose.family<KContent, String>(
  (ref, id) async {
    try {
      final db = Supabase.instance.client;
      final response = await db.from('comment_contents').select<Map<String, dynamic>>('*').match({'id': id}).single();
      return KContent.fromJson(response);
    } catch (e, st) {
      print(e);
      print(st);
      rethrow;
    }
  },
);

final previewCommentsProvider = StreamProvider.autoDispose.family<List<KComment>, String>(
  (ref, parentId) async* {
    final db = Supabase.instance.client;

    final stream = db.from('comments').stream(primaryKey: ['id']).eq('post_id', parentId).limit(3);

    await for (final commentResponses in stream) {
      final comments = <KComment>[];
      for (final comment in commentResponses) {
        await Future.delayed(const Duration(seconds: 1));
        comments.add(KComment.fromJson(comment));
      }
      yield comments;
    }
  },
);
