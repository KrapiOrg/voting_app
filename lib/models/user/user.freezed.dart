// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KUser _$KUserFromJson(Map<String, dynamic> json) {
  switch (json['role']) {
    case 'voter':
      return _KUserVoter.fromJson(json);
    case 'candidate':
      return _KUserCandidate.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'role', 'KUser', 'Invalid union type "${json['role']}"!');
  }
}

/// @nodoc
mixin _$KUser {
  String get identity => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get party => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String identity, String firstName,
            String lastName, String phoneNumber, String party)
        voter,
    required TResult Function(String identity, String firstName,
            String lastName, String phoneNumber, String party)
        candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        voter,
    TResult? Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        voter,
    TResult Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        candidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KUserVoter value) voter,
    required TResult Function(_KUserCandidate value) candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KUserVoter value)? voter,
    TResult? Function(_KUserCandidate value)? candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KUserVoter value)? voter,
    TResult Function(_KUserCandidate value)? candidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KUserCopyWith<KUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KUserCopyWith<$Res> {
  factory $KUserCopyWith(KUser value, $Res Function(KUser) then) =
      _$KUserCopyWithImpl<$Res, KUser>;
  @useResult
  $Res call(
      {String identity,
      String firstName,
      String lastName,
      String phoneNumber,
      String party});
}

/// @nodoc
class _$KUserCopyWithImpl<$Res, $Val extends KUser>
    implements $KUserCopyWith<$Res> {
  _$KUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? party = null,
  }) {
    return _then(_value.copyWith(
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      party: null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KUserVoterCopyWith<$Res> implements $KUserCopyWith<$Res> {
  factory _$$_KUserVoterCopyWith(
          _$_KUserVoter value, $Res Function(_$_KUserVoter) then) =
      __$$_KUserVoterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identity,
      String firstName,
      String lastName,
      String phoneNumber,
      String party});
}

/// @nodoc
class __$$_KUserVoterCopyWithImpl<$Res>
    extends _$KUserCopyWithImpl<$Res, _$_KUserVoter>
    implements _$$_KUserVoterCopyWith<$Res> {
  __$$_KUserVoterCopyWithImpl(
      _$_KUserVoter _value, $Res Function(_$_KUserVoter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? party = null,
  }) {
    return _then(_$_KUserVoter(
      null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KUserVoter implements _KUserVoter {
  const _$_KUserVoter(this.identity, this.firstName, this.lastName,
      this.phoneNumber, this.party,
      {final String? $type})
      : $type = $type ?? 'voter';

  factory _$_KUserVoter.fromJson(Map<String, dynamic> json) =>
      _$$_KUserVoterFromJson(json);

  @override
  final String identity;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String party;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'KUser.voter(identity: $identity, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, party: $party)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KUserVoter &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.party, party) || other.party == party));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identity, firstName, lastName, phoneNumber, party);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KUserVoterCopyWith<_$_KUserVoter> get copyWith =>
      __$$_KUserVoterCopyWithImpl<_$_KUserVoter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String identity, String firstName,
            String lastName, String phoneNumber, String party)
        voter,
    required TResult Function(String identity, String firstName,
            String lastName, String phoneNumber, String party)
        candidate,
  }) {
    return voter(identity, firstName, lastName, phoneNumber, party);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        voter,
    TResult? Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        candidate,
  }) {
    return voter?.call(identity, firstName, lastName, phoneNumber, party);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        voter,
    TResult Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        candidate,
    required TResult orElse(),
  }) {
    if (voter != null) {
      return voter(identity, firstName, lastName, phoneNumber, party);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KUserVoter value) voter,
    required TResult Function(_KUserCandidate value) candidate,
  }) {
    return voter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KUserVoter value)? voter,
    TResult? Function(_KUserCandidate value)? candidate,
  }) {
    return voter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KUserVoter value)? voter,
    TResult Function(_KUserCandidate value)? candidate,
    required TResult orElse(),
  }) {
    if (voter != null) {
      return voter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_KUserVoterToJson(
      this,
    );
  }
}

abstract class _KUserVoter implements KUser {
  const factory _KUserVoter(
      final String identity,
      final String firstName,
      final String lastName,
      final String phoneNumber,
      final String party) = _$_KUserVoter;

  factory _KUserVoter.fromJson(Map<String, dynamic> json) =
      _$_KUserVoter.fromJson;

  @override
  String get identity;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String get party;
  @override
  @JsonKey(ignore: true)
  _$$_KUserVoterCopyWith<_$_KUserVoter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KUserCandidateCopyWith<$Res>
    implements $KUserCopyWith<$Res> {
  factory _$$_KUserCandidateCopyWith(
          _$_KUserCandidate value, $Res Function(_$_KUserCandidate) then) =
      __$$_KUserCandidateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identity,
      String firstName,
      String lastName,
      String phoneNumber,
      String party});
}

/// @nodoc
class __$$_KUserCandidateCopyWithImpl<$Res>
    extends _$KUserCopyWithImpl<$Res, _$_KUserCandidate>
    implements _$$_KUserCandidateCopyWith<$Res> {
  __$$_KUserCandidateCopyWithImpl(
      _$_KUserCandidate _value, $Res Function(_$_KUserCandidate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? party = null,
  }) {
    return _then(_$_KUserCandidate(
      null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KUserCandidate implements _KUserCandidate {
  const _$_KUserCandidate(this.identity, this.firstName, this.lastName,
      this.phoneNumber, this.party,
      {final String? $type})
      : $type = $type ?? 'candidate';

  factory _$_KUserCandidate.fromJson(Map<String, dynamic> json) =>
      _$$_KUserCandidateFromJson(json);

  @override
  final String identity;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String party;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'KUser.candidate(identity: $identity, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, party: $party)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KUserCandidate &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.party, party) || other.party == party));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identity, firstName, lastName, phoneNumber, party);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KUserCandidateCopyWith<_$_KUserCandidate> get copyWith =>
      __$$_KUserCandidateCopyWithImpl<_$_KUserCandidate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String identity, String firstName,
            String lastName, String phoneNumber, String party)
        voter,
    required TResult Function(String identity, String firstName,
            String lastName, String phoneNumber, String party)
        candidate,
  }) {
    return candidate(identity, firstName, lastName, phoneNumber, party);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        voter,
    TResult? Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        candidate,
  }) {
    return candidate?.call(identity, firstName, lastName, phoneNumber, party);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        voter,
    TResult Function(String identity, String firstName, String lastName,
            String phoneNumber, String party)?
        candidate,
    required TResult orElse(),
  }) {
    if (candidate != null) {
      return candidate(identity, firstName, lastName, phoneNumber, party);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KUserVoter value) voter,
    required TResult Function(_KUserCandidate value) candidate,
  }) {
    return candidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KUserVoter value)? voter,
    TResult? Function(_KUserCandidate value)? candidate,
  }) {
    return candidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KUserVoter value)? voter,
    TResult Function(_KUserCandidate value)? candidate,
    required TResult orElse(),
  }) {
    if (candidate != null) {
      return candidate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_KUserCandidateToJson(
      this,
    );
  }
}

abstract class _KUserCandidate implements KUser {
  const factory _KUserCandidate(
      final String identity,
      final String firstName,
      final String lastName,
      final String phoneNumber,
      final String party) = _$_KUserCandidate;

  factory _KUserCandidate.fromJson(Map<String, dynamic> json) =
      _$_KUserCandidate.fromJson;

  @override
  String get identity;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String get party;
  @override
  @JsonKey(ignore: true)
  _$$_KUserCandidateCopyWith<_$_KUserCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}
