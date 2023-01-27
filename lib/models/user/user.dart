import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(
  addImplicitFinal: true,
  makeCollectionsUnmodifiable: true,
  toJson: true,
  fromJson: true,
  unionKey: 'role',
)
class KUser with _$KUser {
  const factory KUser.voter(
    String identity,
    String firstName,
    String lastName,
    String phoneNumber,
    String party,
  ) = _KUserVoter;
  const factory KUser.candidate(
    String identity,
    String firstName,
    String lastName,
    String phoneNumber,
    String party,
  ) = _KUserCandidate;
  factory KUser.fromJson(Map<String, dynamic> json) => _$KUserFromJson(json);
}
