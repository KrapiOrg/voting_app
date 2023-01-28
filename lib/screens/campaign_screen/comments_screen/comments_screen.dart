import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:voting_app/constants/colours.dart';
import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/screens/campaign_screen/widgets/post/comment/comment_widget.dart';
import 'package:voting_app/utils/paginator.dart';

import '../widgets/post/comment/comment_providers.dart';
import '../widgets/post/post.dart';

class PostCommentsScreen extends ConsumerWidget {
  const PostCommentsScreen({
    required this.post,
    super.key,
  });

  final KPost post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comments = ref.watch(
      commentsListProvider(
        DBPaginatorFamily<KComment>(
          post.id!,
          KComment.fromJson,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fillColour1,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CampaginPost(
              post,
              showPreviewComments: false,
              showViewCommentsAction: false,
            ),
          ),
          PagedSliverList<int, KComment>(
            pagingController: comments,
            builderDelegate: PagedChildBuilderDelegate<KComment>(
              itemBuilder: (context, item, index) {
                return CommentWidget(comment: item);
              },
              animateTransitions: true,
              newPageProgressIndicatorBuilder: (context) => const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
