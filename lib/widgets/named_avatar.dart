import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voting_app/models/user/user.dart';
import 'package:voting_app/providers.dart';

class NamedAvatar extends ConsumerWidget {
  const NamedAvatar({
    Key? key,
    required this.user,
    this.radius,
    this.fontSize,
  }) : super(key: key);

  final KUser user;
  final double? radius;
  final double? fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarFuture = ref.watch(userAvatarProvider(user.id));
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            avatarFuture.when(
              data: (avatar) {
                return SizedBox.fromSize(
                  size: Size(500.r, 500.r),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(avatar),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              loading: () => CircleAvatar(radius: radius),
              error: (_, __) {
                print(_);
                print(__);
                return const SizedBox();
              },
            ),
            AutoSizeText(
              '${user.firstName} ${user.lastName}',
              maxLines: 1,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
