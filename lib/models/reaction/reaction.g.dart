// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KReaction _$$_KReactionFromJson(Map<String, dynamic> json) => _$_KReaction(
      postId: json['post_id'] as String,
      ownerId: json['owner_id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_KReactionToJson(_$_KReaction instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'owner_id': instance.ownerId,
      'timestamp': instance.timestamp.toIso8601String(),
    };
