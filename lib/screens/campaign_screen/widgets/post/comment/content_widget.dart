import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'comment_providers.dart';
import 'loading.dart';
import 'text_content_comment.dart';

class CommentContentWidget extends ConsumerWidget {
  const CommentContentWidget({super.key, required this.commentId});

  final String commentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentContent = ref.watch(commentContentProvider(commentId));
    return commentContent.when(
      data: (c) => c.when(
        text: (_, t) => TextContentComment(t),
        image: (_, __) => const SizedBox(),
      ),
      loading: CommentLoading.new,
      error: (_, __) {
        print(_);
        print(__);
        return const SizedBox();
      },
    );
  }
}
