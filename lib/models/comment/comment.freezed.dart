// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KComment _$KCommentFromJson(Map<String, dynamic> json) {
  return _CommentText.fromJson(json);
}

/// @nodoc
mixin _$KComment {
  String? get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  CommentParentType get parentType => throw _privateConstructorUsedError;
  KContent get content => throw _privateConstructorUsedError;
  String? get parentCommentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KCommentCopyWith<KComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KCommentCopyWith<$Res> {
  factory $KCommentCopyWith(KComment value, $Res Function(KComment) then) =
      _$KCommentCopyWithImpl<$Res, KComment>;
  @useResult
  $Res call(
      {String? id,
      String ownerId,
      String postId,
      CommentParentType parentType,
      KContent content,
      String? parentCommentId});

  $KContentCopyWith<$Res> get content;
}

/// @nodoc
class _$KCommentCopyWithImpl<$Res, $Val extends KComment>
    implements $KCommentCopyWith<$Res> {
  _$KCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = null,
    Object? postId = null,
    Object? parentType = null,
    Object? content = null,
    Object? parentCommentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      parentType: null == parentType
          ? _value.parentType
          : parentType // ignore: cast_nullable_to_non_nullable
              as CommentParentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as KContent,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KContentCopyWith<$Res> get content {
    return $KContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentTextCopyWith<$Res>
    implements $KCommentCopyWith<$Res> {
  factory _$$_CommentTextCopyWith(
          _$_CommentText value, $Res Function(_$_CommentText) then) =
      __$$_CommentTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String ownerId,
      String postId,
      CommentParentType parentType,
      KContent content,
      String? parentCommentId});

  @override
  $KContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$_CommentTextCopyWithImpl<$Res>
    extends _$KCommentCopyWithImpl<$Res, _$_CommentText>
    implements _$$_CommentTextCopyWith<$Res> {
  __$$_CommentTextCopyWithImpl(
      _$_CommentText _value, $Res Function(_$_CommentText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = null,
    Object? postId = null,
    Object? parentType = null,
    Object? content = null,
    Object? parentCommentId = freezed,
  }) {
    return _then(_$_CommentText(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      parentType: null == parentType
          ? _value.parentType
          : parentType // ignore: cast_nullable_to_non_nullable
              as CommentParentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as KContent,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentText implements _CommentText {
  const _$_CommentText(
      {this.id,
      required this.ownerId,
      required this.postId,
      required this.parentType,
      required this.content,
      this.parentCommentId});

  factory _$_CommentText.fromJson(Map<String, dynamic> json) =>
      _$$_CommentTextFromJson(json);

  @override
  final String? id;
  @override
  final String ownerId;
  @override
  final String postId;
  @override
  final CommentParentType parentType;
  @override
  final KContent content;
  @override
  final String? parentCommentId;

  @override
  String toString() {
    return 'KComment(id: $id, ownerId: $ownerId, postId: $postId, parentType: $parentType, content: $content, parentCommentId: $parentCommentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentText &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.parentType, parentType) ||
                other.parentType == parentType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, ownerId, postId, parentType, content, parentCommentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentTextCopyWith<_$_CommentText> get copyWith =>
      __$$_CommentTextCopyWithImpl<_$_CommentText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentTextToJson(
      this,
    );
  }
}

abstract class _CommentText implements KComment {
  const factory _CommentText(
      {final String? id,
      required final String ownerId,
      required final String postId,
      required final CommentParentType parentType,
      required final KContent content,
      final String? parentCommentId}) = _$_CommentText;

  factory _CommentText.fromJson(Map<String, dynamic> json) =
      _$_CommentText.fromJson;

  @override
  String? get id;
  @override
  String get ownerId;
  @override
  String get postId;
  @override
  CommentParentType get parentType;
  @override
  KContent get content;
  @override
  String? get parentCommentId;
  @override
  @JsonKey(ignore: true)
  _$$_CommentTextCopyWith<_$_CommentText> get copyWith =>
      throw _privateConstructorUsedError;
}
