// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_comments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreviewCommentsState {
  List<KComment> get comments => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KComment> comments) loading,
    required TResult Function(List<KComment> comments) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KComment> comments)? loading,
    TResult? Function(List<KComment> comments)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KComment> comments)? loading,
    TResult Function(List<KComment> comments)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreviewCommentsStateLoading value) loading,
    required TResult Function(_PreviewCommentsStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PreviewCommentsStateLoading value)? loading,
    TResult? Function(_PreviewCommentsStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreviewCommentsStateLoading value)? loading,
    TResult Function(_PreviewCommentsStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreviewCommentsStateCopyWith<PreviewCommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewCommentsStateCopyWith<$Res> {
  factory $PreviewCommentsStateCopyWith(PreviewCommentsState value,
          $Res Function(PreviewCommentsState) then) =
      _$PreviewCommentsStateCopyWithImpl<$Res, PreviewCommentsState>;
  @useResult
  $Res call({List<KComment> comments});
}

/// @nodoc
class _$PreviewCommentsStateCopyWithImpl<$Res,
        $Val extends PreviewCommentsState>
    implements $PreviewCommentsStateCopyWith<$Res> {
  _$PreviewCommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<KComment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewCommentsStateLoadingCopyWith<$Res>
    implements $PreviewCommentsStateCopyWith<$Res> {
  factory _$$_PreviewCommentsStateLoadingCopyWith(
          _$_PreviewCommentsStateLoading value,
          $Res Function(_$_PreviewCommentsStateLoading) then) =
      __$$_PreviewCommentsStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KComment> comments});
}

/// @nodoc
class __$$_PreviewCommentsStateLoadingCopyWithImpl<$Res>
    extends _$PreviewCommentsStateCopyWithImpl<$Res,
        _$_PreviewCommentsStateLoading>
    implements _$$_PreviewCommentsStateLoadingCopyWith<$Res> {
  __$$_PreviewCommentsStateLoadingCopyWithImpl(
      _$_PreviewCommentsStateLoading _value,
      $Res Function(_$_PreviewCommentsStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$_PreviewCommentsStateLoading(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<KComment>,
    ));
  }
}

/// @nodoc

class _$_PreviewCommentsStateLoading implements _PreviewCommentsStateLoading {
  const _$_PreviewCommentsStateLoading(
      {final List<KComment> comments = const []})
      : _comments = comments;

  final List<KComment> _comments;
  @override
  @JsonKey()
  List<KComment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'PreviewCommentsState.loading(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewCommentsStateLoading &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewCommentsStateLoadingCopyWith<_$_PreviewCommentsStateLoading>
      get copyWith => __$$_PreviewCommentsStateLoadingCopyWithImpl<
          _$_PreviewCommentsStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KComment> comments) loading,
    required TResult Function(List<KComment> comments) data,
  }) {
    return loading(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KComment> comments)? loading,
    TResult? Function(List<KComment> comments)? data,
  }) {
    return loading?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KComment> comments)? loading,
    TResult Function(List<KComment> comments)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreviewCommentsStateLoading value) loading,
    required TResult Function(_PreviewCommentsStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PreviewCommentsStateLoading value)? loading,
    TResult? Function(_PreviewCommentsStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreviewCommentsStateLoading value)? loading,
    TResult Function(_PreviewCommentsStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PreviewCommentsStateLoading implements PreviewCommentsState {
  const factory _PreviewCommentsStateLoading({final List<KComment> comments}) =
      _$_PreviewCommentsStateLoading;

  @override
  List<KComment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewCommentsStateLoadingCopyWith<_$_PreviewCommentsStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PreviewCommentsStateDataCopyWith<$Res>
    implements $PreviewCommentsStateCopyWith<$Res> {
  factory _$$_PreviewCommentsStateDataCopyWith(
          _$_PreviewCommentsStateData value,
          $Res Function(_$_PreviewCommentsStateData) then) =
      __$$_PreviewCommentsStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KComment> comments});
}

/// @nodoc
class __$$_PreviewCommentsStateDataCopyWithImpl<$Res>
    extends _$PreviewCommentsStateCopyWithImpl<$Res,
        _$_PreviewCommentsStateData>
    implements _$$_PreviewCommentsStateDataCopyWith<$Res> {
  __$$_PreviewCommentsStateDataCopyWithImpl(_$_PreviewCommentsStateData _value,
      $Res Function(_$_PreviewCommentsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$_PreviewCommentsStateData(
      null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<KComment>,
    ));
  }
}

/// @nodoc

class _$_PreviewCommentsStateData implements _PreviewCommentsStateData {
  const _$_PreviewCommentsStateData(final List<KComment> comments)
      : _comments = comments;

  final List<KComment> _comments;
  @override
  List<KComment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'PreviewCommentsState.data(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewCommentsStateData &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewCommentsStateDataCopyWith<_$_PreviewCommentsStateData>
      get copyWith => __$$_PreviewCommentsStateDataCopyWithImpl<
          _$_PreviewCommentsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KComment> comments) loading,
    required TResult Function(List<KComment> comments) data,
  }) {
    return data(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KComment> comments)? loading,
    TResult? Function(List<KComment> comments)? data,
  }) {
    return data?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KComment> comments)? loading,
    TResult Function(List<KComment> comments)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreviewCommentsStateLoading value) loading,
    required TResult Function(_PreviewCommentsStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PreviewCommentsStateLoading value)? loading,
    TResult? Function(_PreviewCommentsStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreviewCommentsStateLoading value)? loading,
    TResult Function(_PreviewCommentsStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _PreviewCommentsStateData implements PreviewCommentsState {
  const factory _PreviewCommentsStateData(final List<KComment> comments) =
      _$_PreviewCommentsStateData;

  @override
  List<KComment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewCommentsStateDataCopyWith<_$_PreviewCommentsStateData>
      get copyWith => throw _privateConstructorUsedError;
}
