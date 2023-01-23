import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unInitialized() = _AuthStateUnInitialized;
  const factory AuthState.signedIn(KUser user) = AuthStateSignedIn;
  const factory AuthState.signedOut() = _AuthStateSignedOut;
  const factory AuthState.error(String err) = AuthStateError;
}
