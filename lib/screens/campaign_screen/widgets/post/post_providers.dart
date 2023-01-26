import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import 'package:voting_app/content/kcontent.dart';
import 'package:voting_app/models/post/post.dart';

final postProvider = FutureProvider.autoDispose.family<KPost, String>(
  (ref, postId) async {
    final db = Supabase.instance.client;

    final response = await db
        .from('posts')
        .select<Map<String, dynamic>>(
          '*',
        )
        .match({'id': postId}).single();
    return KPost.fromJson(response);
  },
);

final postContentProvider = FutureProvider.autoDispose.family<KContent, String>(
  (ref, id) async {
    final db = Supabase.instance.client;
    final response = await db.from('post_contents').select<Map<String, dynamic>>('*').match({'id': id}).single();
    return KContent.fromJson(response);
  },
);

class PostsListController extends PagingController<DateTime, KPost> {
  final String ownerId;

  static final db = Supabase.instance.client;
  static final epoch = DateTime.fromMillisecondsSinceEpoch(1640979000000);

  late final RealtimeChannel channel;

  PostsListController(this.ownerId) : super(firstPageKey: epoch) {
    addPageRequestListener((pageKey) {
      fetch(pageKey);
    });
    channel = db.channel('public:posts').on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: 'INSERT',
        schema: 'public',
        table: 'posts',
        filter: 'owner_id=eq.$ownerId',
      ),
      (payload, [ref]) {
        print('Change received: ${payload.toString()}');
        final realPayLoad = payload['new'] as Map<String, dynamic>;
        final comment = KPost.fromJson(realPayLoad);
        appendPage([comment], comment.timestamp);
      },
    )..subscribe();
  }

  void fetch(DateTime key) async {
    try {
      final responses = await db
          .from('posts')
          .select<List<Map<String, dynamic>>>('*')
          .eq('owner_id', ownerId)
          .filter('timestamp', 'gt', key)
          .limit(10)
          .order('timestamp', ascending: true);

      final comments = <KPost>[];

      for (final response in responses) {
        comments.add(KPost.fromJson(response));
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
    await db.removeChannel(channel);
    super.dispose();
  }
}

final postsListProvider = Provider.autoDispose.family<PostsListController, String>(
  (ref, postId) {
    final controller = PostsListController(postId);
    ref.onDispose(() {
      controller.dispose();
    });
    return controller;
  },
);
