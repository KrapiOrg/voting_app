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

final headerBackgroundProvider = FutureProvider.autoDispose.family<String, String>(
  (ref, campaignId) async {
    await Future.delayed(const Duration(seconds: 1));
    final db = ref.watch(dbProvider);
    final record = await db.collection('campaigns').getOne(campaignId);
    final fileName = record.getStringValue('campaign_background');

    if (fileName.isEmpty) {
      return 'https://picsum.photos/id/545/1920/600';
    }

    final url = db.getFileUrl(record, fileName);
    return url.toString();
  },
);

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
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(link),
                    fit: BoxFit.cover,
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
            error: (_, __) => const SizedBox(),
          ),
        ),
      ),
    );
  }
}
