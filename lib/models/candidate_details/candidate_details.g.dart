// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CandidateDetails _$$_CandidateDetailsFromJson(Map<String, dynamic> json) =>
    _$_CandidateDetails(
      json['bio'] as String,
      DateTime.parse(json['birthdate'] as String),
    );

Map<String, dynamic> _$$_CandidateDetailsToJson(_$_CandidateDetails instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'birthdate': instance.birthdate.toIso8601String(),
    };
