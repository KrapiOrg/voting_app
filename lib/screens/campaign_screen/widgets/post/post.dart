
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'post_providers.dart';
import 'text_content_post.dart';

class CampaginPost extends ConsumerWidget {
  const CampaginPost(this.postId, {super.key});

  final String postId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(postProvider(postId));

    return post.when(
      data: (post) {
        return SizedBox(
          width: .75.sw,
          child: Card(
            child: post.content.when(
              text: (text) => TextContentPost(
                text: text,
                post: post,
              ),
              image: (link) => const SizedBox(),
            ),
          ),
        );
      },
      loading: () => Padding(
        padding: const EdgeInsets.only(top: 500).h,
        child: const Center(child: CircularProgressIndicator()),
      ),
      error: (_, __) => Center(child: Text(_.toString())),
    );
  }
}



