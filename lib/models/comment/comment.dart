import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

enum CommentParentType {
  comment,
  post,
}

@freezed
class KComment with _$KComment {
  const factory KComment(
    String id,
    String parentId,
    String ownerId,
    DateTime timestamp,
    CommentParentType parentType,
  ) = _CommentText;

  factory KComment.fromJson(Map<String, dynamic> json) => _$KCommentFromJson(json);
}
