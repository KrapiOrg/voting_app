import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

enum CommentParentType {
  comment,
  post,
}

@freezed
class KComment with _$KComment {
  const factory KComment({
    required String id,
    required String ownerId,
    required String postId,
    required DateTime timestamp,
    required CommentParentType parentType,
    String? parentCommentId,
  }) = _CommentText;

  factory KComment.fromJson(Map<String, dynamic> json) => _$KCommentFromJson(json);
}
