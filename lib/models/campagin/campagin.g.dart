// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campagin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KCampaign _$$_KCampaignFromJson(Map<String, dynamic> json) => _$_KCampaign(
      json['id'] as String,
      json['description'] as String,
      (json['post_ids'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_KCampaignToJson(_$_KCampaign instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'post_ids': instance.postIds,
    };
