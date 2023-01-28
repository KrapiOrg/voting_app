// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentText _$$_CommentTextFromJson(Map<String, dynamic> json) =>
    _$_CommentText(
      id: json['id'] as String?,
      ownerId: json['owner_id'] as String,
      postId: json['post_id'] as String,
      parentType: $enumDecode(_$CommentParentTypeEnumMap, json['parent_type']),
      content: KContent.fromJson(json['content'] as Map<String, dynamic>),
      parentCommentId: json['parent_comment_id'] as String?,
    );

Map<String, dynamic> _$$_CommentTextToJson(_$_CommentText instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'post_id': instance.postId,
      'parent_type': _$CommentParentTypeEnumMap[instance.parentType]!,
      'content': instance.content.toJson(),
      'parent_comment_id': instance.parentCommentId,
    };

const _$CommentParentTypeEnumMap = {
  CommentParentType.comment: 'comment',
  CommentParentType.post: 'post',
};
