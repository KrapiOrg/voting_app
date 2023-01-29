import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:shimmer/shimmer.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/screens/campaign_screen/campaign_providers.dart';

class CampaignHeaderBackground extends ConsumerWidget {
  final String campaignId;
  const CampaignHeaderBackground({
    super.key,
    required this.campaignId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headerBackgroundFuture = ref.watch(headerBackgroundProvider(campaignId));

    return GestureDetector(
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          dialogTitle: 'Pick a Campaign Header',
          withData: false,
          withReadStream: true,
        );

        if (result != null) {
          final file = result.files.first;
          final filePath = file.path;
          final mimeType = filePath != null ? lookupMimeType(filePath) : null;
          print('mimeType: $mimeType');
          final contentType = mimeType != null ? MediaType.parse(mimeType) : null;
          print('contentType: $contentType');
          final readStream = file.readStream;
          final stream = http.ByteStream(readStream!);
          final db = ref.read(dbProvider);
          await db.collection('campaigns').update(
            campaignId,
            files: [
              http.MultipartFile(
                'campaign_background',
                stream,
                file.size,
                filename: file.path,
                contentType: contentType,
              ),
            ],
          );
        } else {
          // User canceled the picker
        }
      },
      child: SizedBox(
        height: 450.h,
        child: AnimatedSwitcher(
          duration: 500.ms,
          child: headerBackgroundFuture.when(
            data: (link) {
              return SizedBox.expand(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(link),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            loading: () {
              return SizedBox.expand(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
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
        ),
      ),
    );
  }
}
