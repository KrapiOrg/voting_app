import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/post_content/post_content.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class KPost with _$KPost {
  const factory KPost(
    String id,
    String ownerId,
    DateTime timestamp,
    PostContent content,
  ) = _KPost;
  factory KPost.fromJson(Map<String, dynamic> json) => _$KPostFromJson(json);
}
