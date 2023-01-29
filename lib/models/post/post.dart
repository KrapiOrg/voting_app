import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/models/content/kcontent.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class KPost with _$KPost {
  const factory KPost({
    String? id,
    DateTime? created,
    required String parentId,
    required KContent content,
  }) = _KPost;
  factory KPost.fromJson(Map<String, dynamic> json) => _$KPostFromJson(json);
}
