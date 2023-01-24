// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentText _$$_CommentTextFromJson(Map<String, dynamic> json) =>
    _$_CommentText(
      json['id'] as String,
      json['parent_id'] as String,
      json['owner_id'] as String,
      DateTime.parse(json['timestamp'] as String),
      $enumDecode(_$CommentParentTypeEnumMap, json['parent_type']),
    );

Map<String, dynamic> _$$_CommentTextToJson(_$_CommentText instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'owner_id': instance.ownerId,
      'timestamp': instance.timestamp.toIso8601String(),
      'parent_type': _$CommentParentTypeEnumMap[instance.parentType]!,
    };

const _$CommentParentTypeEnumMap = {
  CommentParentType.comment: 'comment',
  CommentParentType.post: 'post',
};
