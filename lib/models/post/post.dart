import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class KPost with _$KPost {
  const factory KPost(
    String id,
    String ownerId,
    DateTime timestamp,
  ) = _KPost;
  factory KPost.fromJson(Map<String, dynamic> json) => _$KPostFromJson(json);
}
