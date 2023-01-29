import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:like_button/like_button.dart';

import 'recation_providers.dart';

class ReactionAction extends ConsumerWidget {
  const ReactionAction({
    super.key,
    required this.ownerId,
    required this.postId,
  });

  final String ownerId;
  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postReactionsFuture = ref.watch(
      postReactionProvider(
        ReactionFamily(
          ownerId: ownerId,
          postId: postId,
        ),
      ),
    );
    final isLiked = postReactionsFuture.map(
      data: (_) => _.isLiked,
      loading: (_) => null,
    );

    return AbsorbPointer(
      absorbing: isLiked == null,
      child: LikeButton(
        likeBuilder: (bool isLiked) {
          return Icon(
            Icons.favorite,
            color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
          );
        },
        isLiked: isLiked,
        onTap: isLiked != null
            ? (isLiked) async {
                final notifier = ref.read(
                  postReactionProvider(
                    ReactionFamily(
                      ownerId: ownerId,
                      postId: postId,
                    ),
                  ).notifier,
                );
                return await notifier.setLikeState(isLiked);
              }
            : null,
      ),
    );
  }
}
