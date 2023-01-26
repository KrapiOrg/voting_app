// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campagin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KCampaign _$$_KCampaignFromJson(Map<String, dynamic> json) => _$_KCampaign(
      json['id'] as String,
      json['slogan'] as String,
      DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_KCampaignToJson(_$_KCampaign instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slogan': instance.slogan,
      'timestamp': instance.timestamp.toIso8601String(),
    };
