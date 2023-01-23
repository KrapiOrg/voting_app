// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KUser _$KUserFromJson(Map<String, dynamic> json) {
  return _KUser.fromJson(json);
}

/// @nodoc
mixin _$KUser {
  String get identity => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get party => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KUserCopyWith<KUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KUserCopyWith<$Res> {
  factory $KUserCopyWith(KUser value, $Res Function(KUser) then) =
      _$KUserCopyWithImpl<$Res, KUser>;
  @useResult
  $Res call(
      {String identity,
      String firstName,
      String lastName,
      String role,
      String phoneNumber,
      String party});
}

/// @nodoc
class _$KUserCopyWithImpl<$Res, $Val extends KUser>
    implements $KUserCopyWith<$Res> {
  _$KUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? role = null,
    Object? phoneNumber = null,
    Object? party = null,
  }) {
    return _then(_value.copyWith(
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      party: null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KUserCopyWith<$Res> implements $KUserCopyWith<$Res> {
  factory _$$_KUserCopyWith(_$_KUser value, $Res Function(_$_KUser) then) =
      __$$_KUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identity,
      String firstName,
      String lastName,
      String role,
      String phoneNumber,
      String party});
}

/// @nodoc
class __$$_KUserCopyWithImpl<$Res> extends _$KUserCopyWithImpl<$Res, _$_KUser>
    implements _$$_KUserCopyWith<$Res> {
  __$$_KUserCopyWithImpl(_$_KUser _value, $Res Function(_$_KUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? role = null,
    Object? phoneNumber = null,
    Object? party = null,
  }) {
    return _then(_$_KUser(
      null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KUser implements _KUser {
  const _$_KUser(this.identity, this.firstName, this.lastName, this.role,
      this.phoneNumber, this.party);

  factory _$_KUser.fromJson(Map<String, dynamic> json) =>
      _$$_KUserFromJson(json);

  @override
  final String identity;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String role;
  @override
  final String phoneNumber;
  @override
  final String party;

  @override
  String toString() {
    return 'KUser(identity: $identity, firstName: $firstName, lastName: $lastName, role: $role, phoneNumber: $phoneNumber, party: $party)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KUser &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.party, party) || other.party == party));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identity, firstName, lastName, role, phoneNumber, party);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KUserCopyWith<_$_KUser> get copyWith =>
      __$$_KUserCopyWithImpl<_$_KUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KUserToJson(
      this,
    );
  }
}

abstract class _KUser implements KUser {
  const factory _KUser(
      final String identity,
      final String firstName,
      final String lastName,
      final String role,
      final String phoneNumber,
      final String party) = _$_KUser;

  factory _KUser.fromJson(Map<String, dynamic> json) = _$_KUser.fromJson;

  @override
  String get identity;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get role;
  @override
  String get phoneNumber;
  @override
  String get party;
  @override
  @JsonKey(ignore: true)
  _$$_KUserCopyWith<_$_KUser> get copyWith =>
      throw _privateConstructorUsedError;
}
