// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KPost _$$_KPostFromJson(Map<String, dynamic> json) => _$_KPost(
      id: json['id'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      parentId: json['parent_id'] as String,
      content: KContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KPostToJson(_$_KPost instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created?.toIso8601String(),
      'parent_id': instance.parentId,
      'content': instance.content.toJson(),
    };
