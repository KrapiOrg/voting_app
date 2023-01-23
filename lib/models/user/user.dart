import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(
  addImplicitFinal: true,
  makeCollectionsUnmodifiable: true,
  toJson: true,
  fromJson: true,
)
class KUser with _$KUser {
  const factory KUser(
    String identity,
    String firstName,
    String lastName,
    String role,
    String phoneNumber,
    String party,
  ) = _KUser;
  factory KUser.fromJson(Map<String, dynamic> json) => _$KUserFromJson(json);
}
