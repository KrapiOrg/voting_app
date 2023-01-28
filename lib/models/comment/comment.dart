import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/models/content/kcontent.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

enum CommentParentType {
  comment,
  post,
}

@freezed
class KComment with _$KComment {
  const factory KComment({
    String? id,
    required String ownerId,
    required String postId,
    required CommentParentType parentType,
    required KContent content,
    String? parentCommentId,
  }) = _CommentText;

  factory KComment.fromJson(Map<String, dynamic> json) => _$KCommentFromJson(json);
}
