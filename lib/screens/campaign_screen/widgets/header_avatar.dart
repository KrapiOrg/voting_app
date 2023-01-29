import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/providers.dart';

class CampaignHeaderAvatar extends ConsumerWidget {
  final String candidateId;
  const CampaignHeaderAvatar({
    super.key,
    required this.candidateId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarFuture = ref.watch(userAvatarProvider(candidateId));
    final radius = 1.sw > 680 ? 75.0 : 50.0;

    return Positioned.fill(
      left: 30.w,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: avatarFuture.when(
            data: (avatar) {
              return CircleAvatar(
                minRadius: radius,
                maxRadius: radius,
                foregroundImage: CachedNetworkImageProvider(avatar),
              );
            },
            loading: () => const SizedBox(),
            error: (_, __) {
              print(_);
              print(_);
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
