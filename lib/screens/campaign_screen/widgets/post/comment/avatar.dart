import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/models/user/user.dart';
import 'package:voting_app/providers.dart';

class CommentAvatar extends ConsumerWidget {
  const CommentAvatar({
    Key? key,
    required this.owner,
  }) : super(key: key);

  final KUser owner;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarFuture = ref.watch(userAvatarProvider(owner.id));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: avatarFuture.when(
        data: (link) {
          return SizedBox.fromSize(
            size: Size(125.r, 125.r),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(link),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        loading: () => const SizedBox(),
        error: (_, __) {
          print(_);
          print(__);
          return const SizedBox();
        },
      ),
    );
  }
}
