// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReactionState {
  bool get isLiked => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLiked, int count) loading,
    required TResult Function(bool isLiked, int count) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLiked, int count)? loading,
    TResult? Function(bool isLiked, int count)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLiked, int count)? loading,
    TResult Function(bool isLiked, int count)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReactionStateLoading value) loading,
    required TResult Function(_ReactionStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReactionStateLoading value)? loading,
    TResult? Function(_ReactionStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReactionStateLoading value)? loading,
    TResult Function(_ReactionStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReactionStateCopyWith<ReactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionStateCopyWith<$Res> {
  factory $ReactionStateCopyWith(
          ReactionState value, $Res Function(ReactionState) then) =
      _$ReactionStateCopyWithImpl<$Res, ReactionState>;
  @useResult
  $Res call({bool isLiked, int count});
}

/// @nodoc
class _$ReactionStateCopyWithImpl<$Res, $Val extends ReactionState>
    implements $ReactionStateCopyWith<$Res> {
  _$ReactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReactionStateLoadingCopyWith<$Res>
    implements $ReactionStateCopyWith<$Res> {
  factory _$$_ReactionStateLoadingCopyWith(_$_ReactionStateLoading value,
          $Res Function(_$_ReactionStateLoading) then) =
      __$$_ReactionStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLiked, int count});
}

/// @nodoc
class __$$_ReactionStateLoadingCopyWithImpl<$Res>
    extends _$ReactionStateCopyWithImpl<$Res, _$_ReactionStateLoading>
    implements _$$_ReactionStateLoadingCopyWith<$Res> {
  __$$_ReactionStateLoadingCopyWithImpl(_$_ReactionStateLoading _value,
      $Res Function(_$_ReactionStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? count = null,
  }) {
    return _then(_$_ReactionStateLoading(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReactionStateLoading implements _ReactionStateLoading {
  const _$_ReactionStateLoading({this.isLiked = false, this.count = 0});

  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'ReactionState.loading(isLiked: $isLiked, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReactionStateLoading &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReactionStateLoadingCopyWith<_$_ReactionStateLoading> get copyWith =>
      __$$_ReactionStateLoadingCopyWithImpl<_$_ReactionStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLiked, int count) loading,
    required TResult Function(bool isLiked, int count) data,
  }) {
    return loading(isLiked, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLiked, int count)? loading,
    TResult? Function(bool isLiked, int count)? data,
  }) {
    return loading?.call(isLiked, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLiked, int count)? loading,
    TResult Function(bool isLiked, int count)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLiked, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReactionStateLoading value) loading,
    required TResult Function(_ReactionStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReactionStateLoading value)? loading,
    TResult? Function(_ReactionStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReactionStateLoading value)? loading,
    TResult Function(_ReactionStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReactionStateLoading implements ReactionState {
  const factory _ReactionStateLoading({final bool isLiked, final int count}) =
      _$_ReactionStateLoading;

  @override
  bool get isLiked;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ReactionStateLoadingCopyWith<_$_ReactionStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReactionStateDataCopyWith<$Res>
    implements $ReactionStateCopyWith<$Res> {
  factory _$$_ReactionStateDataCopyWith(_$_ReactionStateData value,
          $Res Function(_$_ReactionStateData) then) =
      __$$_ReactionStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLiked, int count});
}

/// @nodoc
class __$$_ReactionStateDataCopyWithImpl<$Res>
    extends _$ReactionStateCopyWithImpl<$Res, _$_ReactionStateData>
    implements _$$_ReactionStateDataCopyWith<$Res> {
  __$$_ReactionStateDataCopyWithImpl(
      _$_ReactionStateData _value, $Res Function(_$_ReactionStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? count = null,
  }) {
    return _then(_$_ReactionStateData(
      null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReactionStateData implements _ReactionStateData {
  const _$_ReactionStateData(this.isLiked, this.count);

  @override
  final bool isLiked;
  @override
  final int count;

  @override
  String toString() {
    return 'ReactionState.data(isLiked: $isLiked, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReactionStateData &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReactionStateDataCopyWith<_$_ReactionStateData> get copyWith =>
      __$$_ReactionStateDataCopyWithImpl<_$_ReactionStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLiked, int count) loading,
    required TResult Function(bool isLiked, int count) data,
  }) {
    return data(isLiked, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLiked, int count)? loading,
    TResult? Function(bool isLiked, int count)? data,
  }) {
    return data?.call(isLiked, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLiked, int count)? loading,
    TResult Function(bool isLiked, int count)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLiked, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReactionStateLoading value) loading,
    required TResult Function(_ReactionStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReactionStateLoading value)? loading,
    TResult? Function(_ReactionStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReactionStateLoading value)? loading,
    TResult Function(_ReactionStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ReactionStateData implements ReactionState {
  const factory _ReactionStateData(final bool isLiked, final int count) =
      _$_ReactionStateData;

  @override
  bool get isLiked;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ReactionStateDataCopyWith<_$_ReactionStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
