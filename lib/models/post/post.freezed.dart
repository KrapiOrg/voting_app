// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KPost _$KPostFromJson(Map<String, dynamic> json) {
  return _KPost.fromJson(json);
}

/// @nodoc
mixin _$KPost {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  PostContent get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KPostCopyWith<KPost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KPostCopyWith<$Res> {
  factory $KPostCopyWith(KPost value, $Res Function(KPost) then) =
      _$KPostCopyWithImpl<$Res, KPost>;
  @useResult
  $Res call(
      {String id, String ownerId, DateTime timestamp, PostContent content});

  $PostContentCopyWith<$Res> get content;
}

/// @nodoc
class _$KPostCopyWithImpl<$Res, $Val extends KPost>
    implements $KPostCopyWith<$Res> {
  _$KPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? timestamp = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PostContent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostContentCopyWith<$Res> get content {
    return $PostContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KPostCopyWith<$Res> implements $KPostCopyWith<$Res> {
  factory _$$_KPostCopyWith(_$_KPost value, $Res Function(_$_KPost) then) =
      __$$_KPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String ownerId, DateTime timestamp, PostContent content});

  @override
  $PostContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$_KPostCopyWithImpl<$Res> extends _$KPostCopyWithImpl<$Res, _$_KPost>
    implements _$$_KPostCopyWith<$Res> {
  __$$_KPostCopyWithImpl(_$_KPost _value, $Res Function(_$_KPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? timestamp = null,
    Object? content = null,
  }) {
    return _then(_$_KPost(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PostContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KPost implements _KPost {
  const _$_KPost(this.id, this.ownerId, this.timestamp, this.content);

  factory _$_KPost.fromJson(Map<String, dynamic> json) =>
      _$$_KPostFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final DateTime timestamp;
  @override
  final PostContent content;

  @override
  String toString() {
    return 'KPost(id: $id, ownerId: $ownerId, timestamp: $timestamp, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId, timestamp, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KPostCopyWith<_$_KPost> get copyWith =>
      __$$_KPostCopyWithImpl<_$_KPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KPostToJson(
      this,
    );
  }
}

abstract class _KPost implements KPost {
  const factory _KPost(final String id, final String ownerId,
      final DateTime timestamp, final PostContent content) = _$_KPost;

  factory _KPost.fromJson(Map<String, dynamic> json) = _$_KPost.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  DateTime get timestamp;
  @override
  PostContent get content;
  @override
  @JsonKey(ignore: true)
  _$$_KPostCopyWith<_$_KPost> get copyWith =>
      throw _privateConstructorUsedError;
}
