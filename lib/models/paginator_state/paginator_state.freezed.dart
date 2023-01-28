// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatorState<T> {
  List<T> get data => throw _privateConstructorUsedError;
  Future<void> Function()? get cleanup => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) initial,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) data,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginatorStateInitial<T> value) initial,
    required TResult Function(_PaginatorStateData<T> value) data,
    required TResult Function(_PaginatorStateLoading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginatorStateInitial<T> value)? initial,
    TResult? Function(_PaginatorStateData<T> value)? data,
    TResult? Function(_PaginatorStateLoading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginatorStateInitial<T> value)? initial,
    TResult Function(_PaginatorStateData<T> value)? data,
    TResult Function(_PaginatorStateLoading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatorStateCopyWith<T, PaginatorState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatorStateCopyWith<T, $Res> {
  factory $PaginatorStateCopyWith(
          PaginatorState<T> value, $Res Function(PaginatorState<T>) then) =
      _$PaginatorStateCopyWithImpl<T, $Res, PaginatorState<T>>;
  @useResult
  $Res call({List<T> data, Future<void> Function()? cleanup});
}

/// @nodoc
class _$PaginatorStateCopyWithImpl<T, $Res, $Val extends PaginatorState<T>>
    implements $PaginatorStateCopyWith<T, $Res> {
  _$PaginatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cleanup = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      cleanup: freezed == cleanup
          ? _value.cleanup
          : cleanup // ignore: cast_nullable_to_non_nullable
              as Future<void> Function()?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatorStateInitialCopyWith<T, $Res>
    implements $PaginatorStateCopyWith<T, $Res> {
  factory _$$_PaginatorStateInitialCopyWith(_$_PaginatorStateInitial<T> value,
          $Res Function(_$_PaginatorStateInitial<T>) then) =
      __$$_PaginatorStateInitialCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, UnsubscribeFunc? cleanup});
}

/// @nodoc
class __$$_PaginatorStateInitialCopyWithImpl<T, $Res>
    extends _$PaginatorStateCopyWithImpl<T, $Res, _$_PaginatorStateInitial<T>>
    implements _$$_PaginatorStateInitialCopyWith<T, $Res> {
  __$$_PaginatorStateInitialCopyWithImpl(_$_PaginatorStateInitial<T> _value,
      $Res Function(_$_PaginatorStateInitial<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cleanup = freezed,
  }) {
    return _then(_$_PaginatorStateInitial<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      cleanup: freezed == cleanup
          ? _value.cleanup
          : cleanup // ignore: cast_nullable_to_non_nullable
              as UnsubscribeFunc?,
    ));
  }
}

/// @nodoc

class _$_PaginatorStateInitial<T> implements _PaginatorStateInitial<T> {
  const _$_PaginatorStateInitial(
      {final List<T> data = const [], this.cleanup = null})
      : _data = data;

  final List<T> _data;
  @override
  @JsonKey()
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final UnsubscribeFunc? cleanup;

  @override
  String toString() {
    return 'PaginatorState<$T>.initial(data: $data, cleanup: $cleanup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatorStateInitial<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cleanup, cleanup) || other.cleanup == cleanup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), cleanup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatorStateInitialCopyWith<T, _$_PaginatorStateInitial<T>>
      get copyWith => __$$_PaginatorStateInitialCopyWithImpl<T,
          _$_PaginatorStateInitial<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) initial,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) data,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) loading,
  }) {
    return initial(this.data, cleanup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
  }) {
    return initial?.call(this.data, cleanup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this.data, cleanup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginatorStateInitial<T> value) initial,
    required TResult Function(_PaginatorStateData<T> value) data,
    required TResult Function(_PaginatorStateLoading<T> value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginatorStateInitial<T> value)? initial,
    TResult? Function(_PaginatorStateData<T> value)? data,
    TResult? Function(_PaginatorStateLoading<T> value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginatorStateInitial<T> value)? initial,
    TResult Function(_PaginatorStateData<T> value)? data,
    TResult Function(_PaginatorStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaginatorStateInitial<T> implements PaginatorState<T> {
  const factory _PaginatorStateInitial(
      {final List<T> data,
      final UnsubscribeFunc? cleanup}) = _$_PaginatorStateInitial<T>;

  @override
  List<T> get data;
  @override
  UnsubscribeFunc? get cleanup;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatorStateInitialCopyWith<T, _$_PaginatorStateInitial<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaginatorStateDataCopyWith<T, $Res>
    implements $PaginatorStateCopyWith<T, $Res> {
  factory _$$_PaginatorStateDataCopyWith(_$_PaginatorStateData<T> value,
          $Res Function(_$_PaginatorStateData<T>) then) =
      __$$_PaginatorStateDataCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, UnsubscribeFunc? cleanup});
}

/// @nodoc
class __$$_PaginatorStateDataCopyWithImpl<T, $Res>
    extends _$PaginatorStateCopyWithImpl<T, $Res, _$_PaginatorStateData<T>>
    implements _$$_PaginatorStateDataCopyWith<T, $Res> {
  __$$_PaginatorStateDataCopyWithImpl(_$_PaginatorStateData<T> _value,
      $Res Function(_$_PaginatorStateData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cleanup = freezed,
  }) {
    return _then(_$_PaginatorStateData<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      cleanup: freezed == cleanup
          ? _value.cleanup
          : cleanup // ignore: cast_nullable_to_non_nullable
              as UnsubscribeFunc?,
    ));
  }
}

/// @nodoc

class _$_PaginatorStateData<T> implements _PaginatorStateData<T> {
  const _$_PaginatorStateData({required final List<T> data, this.cleanup})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final UnsubscribeFunc? cleanup;

  @override
  String toString() {
    return 'PaginatorState<$T>.data(data: $data, cleanup: $cleanup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatorStateData<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cleanup, cleanup) || other.cleanup == cleanup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), cleanup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatorStateDataCopyWith<T, _$_PaginatorStateData<T>> get copyWith =>
      __$$_PaginatorStateDataCopyWithImpl<T, _$_PaginatorStateData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) initial,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) data,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) loading,
  }) {
    return data(this.data, cleanup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
  }) {
    return data?.call(this.data, cleanup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, cleanup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginatorStateInitial<T> value) initial,
    required TResult Function(_PaginatorStateData<T> value) data,
    required TResult Function(_PaginatorStateLoading<T> value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginatorStateInitial<T> value)? initial,
    TResult? Function(_PaginatorStateData<T> value)? data,
    TResult? Function(_PaginatorStateLoading<T> value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginatorStateInitial<T> value)? initial,
    TResult Function(_PaginatorStateData<T> value)? data,
    TResult Function(_PaginatorStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _PaginatorStateData<T> implements PaginatorState<T> {
  const factory _PaginatorStateData(
      {required final List<T> data,
      final UnsubscribeFunc? cleanup}) = _$_PaginatorStateData<T>;

  @override
  List<T> get data;
  @override
  UnsubscribeFunc? get cleanup;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatorStateDataCopyWith<T, _$_PaginatorStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaginatorStateLoadingCopyWith<T, $Res>
    implements $PaginatorStateCopyWith<T, $Res> {
  factory _$$_PaginatorStateLoadingCopyWith(_$_PaginatorStateLoading<T> value,
          $Res Function(_$_PaginatorStateLoading<T>) then) =
      __$$_PaginatorStateLoadingCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, UnsubscribeFunc? cleanup});
}

/// @nodoc
class __$$_PaginatorStateLoadingCopyWithImpl<T, $Res>
    extends _$PaginatorStateCopyWithImpl<T, $Res, _$_PaginatorStateLoading<T>>
    implements _$$_PaginatorStateLoadingCopyWith<T, $Res> {
  __$$_PaginatorStateLoadingCopyWithImpl(_$_PaginatorStateLoading<T> _value,
      $Res Function(_$_PaginatorStateLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cleanup = freezed,
  }) {
    return _then(_$_PaginatorStateLoading<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      cleanup: freezed == cleanup
          ? _value.cleanup
          : cleanup // ignore: cast_nullable_to_non_nullable
              as UnsubscribeFunc?,
    ));
  }
}

/// @nodoc

class _$_PaginatorStateLoading<T> implements _PaginatorStateLoading<T> {
  const _$_PaginatorStateLoading({required final List<T> data, this.cleanup})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final UnsubscribeFunc? cleanup;

  @override
  String toString() {
    return 'PaginatorState<$T>.loading(data: $data, cleanup: $cleanup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatorStateLoading<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cleanup, cleanup) || other.cleanup == cleanup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), cleanup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatorStateLoadingCopyWith<T, _$_PaginatorStateLoading<T>>
      get copyWith => __$$_PaginatorStateLoadingCopyWithImpl<T,
          _$_PaginatorStateLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) initial,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) data,
    required TResult Function(List<T> data, UnsubscribeFunc? cleanup) loading,
  }) {
    return loading(this.data, cleanup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult? Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
  }) {
    return loading?.call(this.data, cleanup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? initial,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? data,
    TResult Function(List<T> data, UnsubscribeFunc? cleanup)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.data, cleanup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginatorStateInitial<T> value) initial,
    required TResult Function(_PaginatorStateData<T> value) data,
    required TResult Function(_PaginatorStateLoading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginatorStateInitial<T> value)? initial,
    TResult? Function(_PaginatorStateData<T> value)? data,
    TResult? Function(_PaginatorStateLoading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginatorStateInitial<T> value)? initial,
    TResult Function(_PaginatorStateData<T> value)? data,
    TResult Function(_PaginatorStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PaginatorStateLoading<T> implements PaginatorState<T> {
  const factory _PaginatorStateLoading(
      {required final List<T> data,
      final UnsubscribeFunc? cleanup}) = _$_PaginatorStateLoading<T>;

  @override
  List<T> get data;
  @override
  UnsubscribeFunc? get cleanup;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatorStateLoadingCopyWith<T, _$_PaginatorStateLoading<T>>
      get copyWith => throw _privateConstructorUsedError;
}
