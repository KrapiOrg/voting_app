import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/models/content/kcontent.dart';

import 'text_content_post.dart';

class PostContentWidget extends HookConsumerWidget {
  const PostContentWidget({
    super.key,
    required this.content,
  });

  final KContent content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();

    return content.map(
      text: (content) => TextPostContent(content.text),
      image: (_) => const SizedBox(),
    );
  }
}
