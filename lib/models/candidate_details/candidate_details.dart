import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate_details.g.dart';
part 'candidate_details.freezed.dart';

@freezed
class CandidateDetails with _$CandidateDetails {
  const factory CandidateDetails(
    String bio,
    DateTime birthdate,
  ) = _CandidateDetails;
  factory CandidateDetails.fromJson(Map<String, dynamic> json) => _$CandidateDetailsFromJson(json);
}
