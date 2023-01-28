// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KReaction _$KReactionFromJson(Map<String, dynamic> json) {
  return _KReaction.fromJson(json);
}

/// @nodoc
mixin _$KReaction {
  String get postId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KReactionCopyWith<KReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KReactionCopyWith<$Res> {
  factory $KReactionCopyWith(KReaction value, $Res Function(KReaction) then) =
      _$KReactionCopyWithImpl<$Res, KReaction>;
  @useResult
  $Res call({String postId, String ownerId});
}

/// @nodoc
class _$KReactionCopyWithImpl<$Res, $Val extends KReaction>
    implements $KReactionCopyWith<$Res> {
  _$KReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KReactionCopyWith<$Res> implements $KReactionCopyWith<$Res> {
  factory _$$_KReactionCopyWith(
          _$_KReaction value, $Res Function(_$_KReaction) then) =
      __$$_KReactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId, String ownerId});
}

/// @nodoc
class __$$_KReactionCopyWithImpl<$Res>
    extends _$KReactionCopyWithImpl<$Res, _$_KReaction>
    implements _$$_KReactionCopyWith<$Res> {
  __$$_KReactionCopyWithImpl(
      _$_KReaction _value, $Res Function(_$_KReaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? ownerId = null,
  }) {
    return _then(_$_KReaction(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KReaction implements _KReaction {
  const _$_KReaction({required this.postId, required this.ownerId});

  factory _$_KReaction.fromJson(Map<String, dynamic> json) =>
      _$$_KReactionFromJson(json);

  @override
  final String postId;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'KReaction(postId: $postId, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KReaction &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, ownerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KReactionCopyWith<_$_KReaction> get copyWith =>
      __$$_KReactionCopyWithImpl<_$_KReaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KReactionToJson(
      this,
    );
  }
}

abstract class _KReaction implements KReaction {
  const factory _KReaction(
      {required final String postId,
      required final String ownerId}) = _$_KReaction;

  factory _KReaction.fromJson(Map<String, dynamic> json) =
      _$_KReaction.fromJson;

  @override
  String get postId;
  @override
  String get ownerId;
  @override
  @JsonKey(ignore: true)
  _$$_KReactionCopyWith<_$_KReaction> get copyWith =>
      throw _privateConstructorUsedError;
}
