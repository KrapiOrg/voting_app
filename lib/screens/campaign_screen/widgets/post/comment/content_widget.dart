import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voting_app/models/content/kcontent.dart';

import 'text_content_comment.dart';

class CommentContentWidget extends ConsumerWidget {
  const CommentContentWidget({super.key, required this.content});

  final KContent content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return content.map(
      text: (content) => TextContentComment(content.text),
      image: (_) => const SizedBox(),
    );
  }
}
