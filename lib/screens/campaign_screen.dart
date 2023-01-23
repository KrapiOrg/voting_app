import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voting_app/constants/colours.dart';
import 'package:voting_app/models/campagin/campagin.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/models/user/user.dart';
import 'package:voting_app/widgets/named_avatar.dart';

final campaignProvider = StreamProvider.autoDispose.family<KCampaign, String>(
  (ref, userId) async* {
    final db = Supabase.instance.client;

    try {
      final stream = db.from('campaigns').stream(primaryKey: ['id']).limit(1).eq('id', userId);
      await for (final change in stream) {
        yield KCampaign.fromJson(change.first);
      }
    } catch (e, st) {
      print(e.toString());
      print(st.toString());
      rethrow;
    }
  },
);

final postProvider = FutureProvider.autoDispose.family<KPost, String>(
  (ref, postId) async {
    final db = Supabase.instance.client;

    final response = await db.from('posts').select<Map<String, dynamic>>(
      '''
      *,
      content:post_contents(*)
      ''',
    ).match({'id': postId}).single();
    return KPost.fromJson(response);
  },
);

class CampaginPost extends ConsumerWidget {
  const CampaginPost(this.postId, {super.key});

  final String postId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(postProvider(postId));
    return post.when(
      data: (post) {
        return Text(post.id);
      },
      loading: () => Padding(
        padding: const EdgeInsets.only(top: 500).h,
        child: const Center(child: CircularProgressIndicator()),
      ),
      error: (_, __) => Center(child: Text(_.toString())),
    );
  }
}

class _CandidateCampaignScreen extends ConsumerWidget {
  const _CandidateCampaignScreen(this.candidate, {super.key});

  final KUser candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignStream = ref.watch(campaignProvider(candidate.identity));

    return CustomScrollView(
      slivers: [
        campaignStream.when(
          data: (campaign) {
            final postIds = campaign.postIds;
            return MultiSliver(
              children: [
                CampaginHeader(candidate: candidate, campaign: campaign),
                postIds.isEmpty ? const CampaginHasNoPostsWidget() : PostsList(postIds: postIds),
              ],
            );
          },
          loading: () => SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 500).h,
              child: const Center(child: CircularProgressIndicator()),
            ),
          ),
          error: (_, __) => SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 500).h,
              child: const Text(
                'This candidate does not have a campaign',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CampaginHasNoPostsWidget extends StatelessWidget {
  const CampaginHasNoPostsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 500).h,
      child: const Text(
        'This campagin has no posts',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class PostsList extends StatelessWidget {
  const PostsList({
    Key? key,
    required this.postIds,
  }) : super(key: key);

  final List<String> postIds;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32).w,
          child: const Divider(),
        ),
        Text(
          'Posts',
          style: GoogleFonts.poppins(
            fontSize: 75.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: postIds.length,
            (_, index) => CampaginPost(postIds[index]),
          ),
        ),
      ],
    );
  }
}

class CampaginHeader extends StatelessWidget {
  const CampaginHeader({
    Key? key,
    required this.candidate,
    required this.campaign,
  }) : super(key: key);

  final KUser candidate;
  final KCampaign campaign;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3.sh,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          NamedAvatar(
            user: candidate,
            radius: 200.r,
            iconSize: 200.r,
            fontSize: 75.sp,
          ),
          const VerticalDivider(),
          Expanded(
            child: SizedBox(
              height: 1.sh,
              child: Card(
                child: Center(
                  child: Text(
                    campaign.description,
                    style: GoogleFonts.poppins(
                      fontSize: 100.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final userFromIdProvider = FutureProvider.autoDispose.family<Option<KUser>, String>(
  (ref, identity) async {
    final db = Supabase.instance.client;

    try {
      final response =
          await db.from('usersview').select<Map<String, dynamic>?>('*').match({'identity': identity}).maybeSingle();

      if (response == null) {
        return none();
      }
      print(response);
      return Some(KUser.fromJson(response));
    } catch (e) {
      rethrow;
    }
  },
);

class CampaignScreen extends ConsumerWidget {
  const CampaignScreen({super.key, required this.identity});

  final String identity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final candidateFuture = ref.watch(userFromIdProvider(identity));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fillColour1,
      ),
      body: candidateFuture.when(
        data: (candidate) => candidate.fold<Widget>(
          () => Center(child: Text('$identity does not exist')),
          _CandidateCampaignScreen.new,
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => Center(child: Text(_.toString())),
      ),
    );
  }
}
