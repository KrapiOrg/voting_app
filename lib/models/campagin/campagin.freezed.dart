// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campagin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KCampaign _$KCampaignFromJson(Map<String, dynamic> json) {
  return _KCampaign.fromJson(json);
}

/// @nodoc
mixin _$KCampaign {
  String get candidateId => throw _privateConstructorUsedError;
  String get slogan => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KCampaignCopyWith<KCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KCampaignCopyWith<$Res> {
  factory $KCampaignCopyWith(KCampaign value, $Res Function(KCampaign) then) =
      _$KCampaignCopyWithImpl<$Res, KCampaign>;
  @useResult
  $Res call({String candidateId, String slogan, DateTime created});
}

/// @nodoc
class _$KCampaignCopyWithImpl<$Res, $Val extends KCampaign>
    implements $KCampaignCopyWith<$Res> {
  _$KCampaignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidateId = null,
    Object? slogan = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      candidateId: null == candidateId
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as String,
      slogan: null == slogan
          ? _value.slogan
          : slogan // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KCampaignCopyWith<$Res> implements $KCampaignCopyWith<$Res> {
  factory _$$_KCampaignCopyWith(
          _$_KCampaign value, $Res Function(_$_KCampaign) then) =
      __$$_KCampaignCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String candidateId, String slogan, DateTime created});
}

/// @nodoc
class __$$_KCampaignCopyWithImpl<$Res>
    extends _$KCampaignCopyWithImpl<$Res, _$_KCampaign>
    implements _$$_KCampaignCopyWith<$Res> {
  __$$_KCampaignCopyWithImpl(
      _$_KCampaign _value, $Res Function(_$_KCampaign) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidateId = null,
    Object? slogan = null,
    Object? created = null,
  }) {
    return _then(_$_KCampaign(
      null == candidateId
          ? _value.candidateId
          : candidateId // ignore: cast_nullable_to_non_nullable
              as String,
      null == slogan
          ? _value.slogan
          : slogan // ignore: cast_nullable_to_non_nullable
              as String,
      null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KCampaign implements _KCampaign {
  const _$_KCampaign(this.candidateId, this.slogan, this.created);

  factory _$_KCampaign.fromJson(Map<String, dynamic> json) =>
      _$$_KCampaignFromJson(json);

  @override
  final String candidateId;
  @override
  final String slogan;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'KCampaign(candidateId: $candidateId, slogan: $slogan, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KCampaign &&
            (identical(other.candidateId, candidateId) ||
                other.candidateId == candidateId) &&
            (identical(other.slogan, slogan) || other.slogan == slogan) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, candidateId, slogan, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KCampaignCopyWith<_$_KCampaign> get copyWith =>
      __$$_KCampaignCopyWithImpl<_$_KCampaign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KCampaignToJson(
      this,
    );
  }
}

abstract class _KCampaign implements KCampaign {
  const factory _KCampaign(final String candidateId, final String slogan,
      final DateTime created) = _$_KCampaign;

  factory _KCampaign.fromJson(Map<String, dynamic> json) =
      _$_KCampaign.fromJson;

  @override
  String get candidateId;
  @override
  String get slogan;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_KCampaignCopyWith<_$_KCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}
