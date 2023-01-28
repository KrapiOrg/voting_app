// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KUserVoter _$$_KUserVoterFromJson(Map<String, dynamic> json) =>
    _$_KUserVoter(
      json['id'] as String,
      json['first_name'] as String,
      json['last_name'] as String,
      json['phone_number'] as int,
      json['party'] as String,
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$_KUserVoterToJson(_$_KUserVoter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'party': instance.party,
      'role': instance.$type,
    };

_$_KUserCandidate _$$_KUserCandidateFromJson(Map<String, dynamic> json) =>
    _$_KUserCandidate(
      json['id'] as String,
      json['first_name'] as String,
      json['last_name'] as String,
      json['phone_number'] as int,
      json['party'] as String,
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$_KUserCandidateToJson(_$_KUserCandidate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'party': instance.party,
      'role': instance.$type,
    };
