import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:voting_app/screens/campaign_screen/widgets/post/post_providers.dart';

import 'text_content_post.dart';

class PostContentWidget extends HookConsumerWidget {
  const PostContentWidget({
    super.key,
    required this.postId,
  });

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final contentFuture = ref.watch(postContentProvider(postId));
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: contentFuture.when(
        data: (content) {
          return content.when(
            text: (_, t) => TextPostContent(t),
            image: (_, __) => const SizedBox(),
          );
        },
        loading: () {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: SizedBox(
              height: 0.2.sh,
              width: 1.sw,
              child: const Card(),
            ),
          );
        },
        error: (_, __) {
          print(_);
          print(__);
          return const SizedBox();
        },
      ),
    );
  }
}
