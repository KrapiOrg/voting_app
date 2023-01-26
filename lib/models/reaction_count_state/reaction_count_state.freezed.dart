// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReactionCountState {
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) loading,
    required TResult Function(int count) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? loading,
    TResult? Function(int count)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? loading,
    TResult Function(int count)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReactionCountStateLoading value) loading,
    required TResult Function(_ReactionCountStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReactionCountStateLoading value)? loading,
    TResult? Function(_ReactionCountStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReactionCountStateLoading value)? loading,
    TResult Function(_ReactionCountStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReactionCountStateCopyWith<ReactionCountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionCountStateCopyWith<$Res> {
  factory $ReactionCountStateCopyWith(
          ReactionCountState value, $Res Function(ReactionCountState) then) =
      _$ReactionCountStateCopyWithImpl<$Res, ReactionCountState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$ReactionCountStateCopyWithImpl<$Res, $Val extends ReactionCountState>
    implements $ReactionCountStateCopyWith<$Res> {
  _$ReactionCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReactionCountStateLoadingCopyWith<$Res>
    implements $ReactionCountStateCopyWith<$Res> {
  factory _$$_ReactionCountStateLoadingCopyWith(
          _$_ReactionCountStateLoading value,
          $Res Function(_$_ReactionCountStateLoading) then) =
      __$$_ReactionCountStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_ReactionCountStateLoadingCopyWithImpl<$Res>
    extends _$ReactionCountStateCopyWithImpl<$Res, _$_ReactionCountStateLoading>
    implements _$$_ReactionCountStateLoadingCopyWith<$Res> {
  __$$_ReactionCountStateLoadingCopyWithImpl(
      _$_ReactionCountStateLoading _value,
      $Res Function(_$_ReactionCountStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_ReactionCountStateLoading(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReactionCountStateLoading implements _ReactionCountStateLoading {
  const _$_ReactionCountStateLoading(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'ReactionCountState.loading(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReactionCountStateLoading &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReactionCountStateLoadingCopyWith<_$_ReactionCountStateLoading>
      get copyWith => __$$_ReactionCountStateLoadingCopyWithImpl<
          _$_ReactionCountStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) loading,
    required TResult Function(int count) data,
  }) {
    return loading(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? loading,
    TResult? Function(int count)? data,
  }) {
    return loading?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? loading,
    TResult Function(int count)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReactionCountStateLoading value) loading,
    required TResult Function(_ReactionCountStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReactionCountStateLoading value)? loading,
    TResult? Function(_ReactionCountStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReactionCountStateLoading value)? loading,
    TResult Function(_ReactionCountStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReactionCountStateLoading implements ReactionCountState {
  const factory _ReactionCountStateLoading(final int count) =
      _$_ReactionCountStateLoading;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ReactionCountStateLoadingCopyWith<_$_ReactionCountStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReactionCountStateDataCopyWith<$Res>
    implements $ReactionCountStateCopyWith<$Res> {
  factory _$$_ReactionCountStateDataCopyWith(_$_ReactionCountStateData value,
          $Res Function(_$_ReactionCountStateData) then) =
      __$$_ReactionCountStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_ReactionCountStateDataCopyWithImpl<$Res>
    extends _$ReactionCountStateCopyWithImpl<$Res, _$_ReactionCountStateData>
    implements _$$_ReactionCountStateDataCopyWith<$Res> {
  __$$_ReactionCountStateDataCopyWithImpl(_$_ReactionCountStateData _value,
      $Res Function(_$_ReactionCountStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_ReactionCountStateData(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReactionCountStateData implements _ReactionCountStateData {
  const _$_ReactionCountStateData(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'ReactionCountState.data(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReactionCountStateData &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReactionCountStateDataCopyWith<_$_ReactionCountStateData> get copyWith =>
      __$$_ReactionCountStateDataCopyWithImpl<_$_ReactionCountStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) loading,
    required TResult Function(int count) data,
  }) {
    return data(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? loading,
    TResult? Function(int count)? data,
  }) {
    return data?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? loading,
    TResult Function(int count)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReactionCountStateLoading value) loading,
    required TResult Function(_ReactionCountStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReactionCountStateLoading value)? loading,
    TResult? Function(_ReactionCountStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReactionCountStateLoading value)? loading,
    TResult Function(_ReactionCountStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ReactionCountStateData implements ReactionCountState {
  const factory _ReactionCountStateData(final int count) =
      _$_ReactionCountStateData;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ReactionCountStateDataCopyWith<_$_ReactionCountStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
