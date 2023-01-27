// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandidateDetails _$CandidateDetailsFromJson(Map<String, dynamic> json) {
  return _CandidateDetails.fromJson(json);
}

/// @nodoc
mixin _$CandidateDetails {
  String get bio => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateDetailsCopyWith<CandidateDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateDetailsCopyWith<$Res> {
  factory $CandidateDetailsCopyWith(
          CandidateDetails value, $Res Function(CandidateDetails) then) =
      _$CandidateDetailsCopyWithImpl<$Res, CandidateDetails>;
  @useResult
  $Res call({String bio, DateTime birthdate});
}

/// @nodoc
class _$CandidateDetailsCopyWithImpl<$Res, $Val extends CandidateDetails>
    implements $CandidateDetailsCopyWith<$Res> {
  _$CandidateDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bio = null,
    Object? birthdate = null,
  }) {
    return _then(_value.copyWith(
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CandidateDetailsCopyWith<$Res>
    implements $CandidateDetailsCopyWith<$Res> {
  factory _$$_CandidateDetailsCopyWith(
          _$_CandidateDetails value, $Res Function(_$_CandidateDetails) then) =
      __$$_CandidateDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bio, DateTime birthdate});
}

/// @nodoc
class __$$_CandidateDetailsCopyWithImpl<$Res>
    extends _$CandidateDetailsCopyWithImpl<$Res, _$_CandidateDetails>
    implements _$$_CandidateDetailsCopyWith<$Res> {
  __$$_CandidateDetailsCopyWithImpl(
      _$_CandidateDetails _value, $Res Function(_$_CandidateDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bio = null,
    Object? birthdate = null,
  }) {
    return _then(_$_CandidateDetails(
      null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CandidateDetails implements _CandidateDetails {
  const _$_CandidateDetails(this.bio, this.birthdate);

  factory _$_CandidateDetails.fromJson(Map<String, dynamic> json) =>
      _$$_CandidateDetailsFromJson(json);

  @override
  final String bio;
  @override
  final DateTime birthdate;

  @override
  String toString() {
    return 'CandidateDetails(bio: $bio, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CandidateDetails &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bio, birthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CandidateDetailsCopyWith<_$_CandidateDetails> get copyWith =>
      __$$_CandidateDetailsCopyWithImpl<_$_CandidateDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandidateDetailsToJson(
      this,
    );
  }
}

abstract class _CandidateDetails implements CandidateDetails {
  const factory _CandidateDetails(final String bio, final DateTime birthdate) =
      _$_CandidateDetails;

  factory _CandidateDetails.fromJson(Map<String, dynamic> json) =
      _$_CandidateDetails.fromJson;

  @override
  String get bio;
  @override
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_CandidateDetailsCopyWith<_$_CandidateDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
