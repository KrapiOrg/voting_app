import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class KPost with _$KPost {
  const factory KPost({
    required String id,
    required String ownerId,
    required DateTime timestamp,
  }) = _KPost;
  factory KPost.fromJson(Map<String, dynamic> json) => _$KPostFromJson(json);
}
