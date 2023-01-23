// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KUser _$$_KUserFromJson(Map<String, dynamic> json) => _$_KUser(
      json['identity'] as String,
      json['first_name'] as String,
      json['last_name'] as String,
      json['role'] as String,
      json['phone_number'] as String,
      json['party'] as String,
    );

Map<String, dynamic> _$$_KUserToJson(_$_KUser instance) => <String, dynamic>{
      'identity': instance.identity,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'role': instance.role,
      'phone_number': instance.phoneNumber,
      'party': instance.party,
    };
