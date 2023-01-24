import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

final campaignTimeFormatterProvider = Provider<DateFormat>((_) => DateFormat('hh:mm a · MMM dd, yy'));

class PostTemporalDetails extends ConsumerWidget {
  const PostTemporalDetails({
    Key? key,
    required this.timestamp,
  }) : super(key: key);

  final DateTime timestamp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formatter = ref.watch(campaignTimeFormatterProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0).h,
      child: AutoSizeText(
        formatter.format(timestamp),
        style: GoogleFonts.poppins(
          color: Colors.black.withOpacity(0.7),
          fontSize: 40.sp,
        ),
        maxLines: 1,
      ),
    );
  }
}