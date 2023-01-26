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
    required String parentId,
    required String ownerId,
    required DateTime timestamp,
    required CommentParentType parentType,
  }) = _CommentText;

  factory KComment.fromJson(Map<String, dynamic> json) => _$KCommentFromJson(json);
}
