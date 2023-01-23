// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(KUser user) signedIn,
    required TResult Function() signedOut,
    required TResult Function(String err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(KUser user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function(String err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(KUser user)? signedIn,
    TResult Function()? signedOut,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnInitialized value) unInitialized,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(_AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnInitialized value)? unInitialized,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(_AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnInitialized value)? unInitialized,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(_AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthStateUnInitializedCopyWith<$Res> {
  factory _$$_AuthStateUnInitializedCopyWith(_$_AuthStateUnInitialized value,
          $Res Function(_$_AuthStateUnInitialized) then) =
      __$$_AuthStateUnInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateUnInitializedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateUnInitialized>
    implements _$$_AuthStateUnInitializedCopyWith<$Res> {
  __$$_AuthStateUnInitializedCopyWithImpl(_$_AuthStateUnInitialized _value,
      $Res Function(_$_AuthStateUnInitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateUnInitialized implements _AuthStateUnInitialized {
  const _$_AuthStateUnInitialized();

  @override
  String toString() {
    return 'AuthState.unInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateUnInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(KUser user) signedIn,
    required TResult Function() signedOut,
    required TResult Function(String err) error,
  }) {
    return unInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(KUser user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function(String err)? error,
  }) {
    return unInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(KUser user)? signedIn,
    TResult Function()? signedOut,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (unInitialized != null) {
      return unInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnInitialized value) unInitialized,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(_AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return unInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnInitialized value)? unInitialized,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(_AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return unInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnInitialized value)? unInitialized,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(_AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (unInitialized != null) {
      return unInitialized(this);
    }
    return orElse();
  }
}

abstract class _AuthStateUnInitialized implements AuthState {
  const factory _AuthStateUnInitialized() = _$_AuthStateUnInitialized;
}

/// @nodoc
abstract class _$$AuthStateSignedInCopyWith<$Res> {
  factory _$$AuthStateSignedInCopyWith(
          _$AuthStateSignedIn value, $Res Function(_$AuthStateSignedIn) then) =
      __$$AuthStateSignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({KUser user});

  $KUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthStateSignedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSignedIn>
    implements _$$AuthStateSignedInCopyWith<$Res> {
  __$$AuthStateSignedInCopyWithImpl(
      _$AuthStateSignedIn _value, $Res Function(_$AuthStateSignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthStateSignedIn(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as KUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KUserCopyWith<$Res> get user {
    return $KUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthStateSignedIn implements AuthStateSignedIn {
  const _$AuthStateSignedIn(this.user);

  @override
  final KUser user;

  @override
  String toString() {
    return 'AuthState.signedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateSignedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateSignedInCopyWith<_$AuthStateSignedIn> get copyWith =>
      __$$AuthStateSignedInCopyWithImpl<_$AuthStateSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(KUser user) signedIn,
    required TResult Function() signedOut,
    required TResult Function(String err) error,
  }) {
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(KUser user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function(String err)? error,
  }) {
    return signedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(KUser user)? signedIn,
    TResult Function()? signedOut,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnInitialized value) unInitialized,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(_AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnInitialized value)? unInitialized,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(_AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnInitialized value)? unInitialized,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(_AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class AuthStateSignedIn implements AuthState {
  const factory AuthStateSignedIn(final KUser user) = _$AuthStateSignedIn;

  KUser get user;
  @JsonKey(ignore: true)
  _$$AuthStateSignedInCopyWith<_$AuthStateSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStateSignedOutCopyWith<$Res> {
  factory _$$_AuthStateSignedOutCopyWith(_$_AuthStateSignedOut value,
          $Res Function(_$_AuthStateSignedOut) then) =
      __$$_AuthStateSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateSignedOutCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateSignedOut>
    implements _$$_AuthStateSignedOutCopyWith<$Res> {
  __$$_AuthStateSignedOutCopyWithImpl(
      _$_AuthStateSignedOut _value, $Res Function(_$_AuthStateSignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateSignedOut implements _AuthStateSignedOut {
  const _$_AuthStateSignedOut();

  @override
  String toString() {
    return 'AuthState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(KUser user) signedIn,
    required TResult Function() signedOut,
    required TResult Function(String err) error,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(KUser user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function(String err)? error,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(KUser user)? signedIn,
    TResult Function()? signedOut,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnInitialized value) unInitialized,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(_AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnInitialized value)? unInitialized,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(_AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnInitialized value)? unInitialized,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(_AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthStateSignedOut implements AuthState {
  const factory _AuthStateSignedOut() = _$_AuthStateSignedOut;
}

/// @nodoc
abstract class _$$AuthStateErrorCopyWith<$Res> {
  factory _$$AuthStateErrorCopyWith(
          _$AuthStateError value, $Res Function(_$AuthStateError) then) =
      __$$AuthStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateError>
    implements _$$AuthStateErrorCopyWith<$Res> {
  __$$AuthStateErrorCopyWithImpl(
      _$AuthStateError _value, $Res Function(_$AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$AuthStateError(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'AuthState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateError &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorCopyWith<_$AuthStateError> get copyWith =>
      __$$AuthStateErrorCopyWithImpl<_$AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(KUser user) signedIn,
    required TResult Function() signedOut,
    required TResult Function(String err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(KUser user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function(String err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(KUser user)? signedIn,
    TResult Function()? signedOut,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnInitialized value) unInitialized,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(_AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnInitialized value)? unInitialized,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(_AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnInitialized value)? unInitialized,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(_AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(final String err) = _$AuthStateError;

  String get err;
  @JsonKey(ignore: true)
  _$$AuthStateErrorCopyWith<_$AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
