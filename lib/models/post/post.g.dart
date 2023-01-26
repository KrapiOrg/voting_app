// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KPost _$$_KPostFromJson(Map<String, dynamic> json) => _$_KPost(
      json['id'] as String,
      json['owner_id'] as String,
      DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_KPostToJson(_$_KPost instance) => <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'timestamp': instance.timestamp.toIso8601String(),
    };
