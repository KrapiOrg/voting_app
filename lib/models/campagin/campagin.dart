import 'package:freezed_annotation/freezed_annotation.dart';

part 'campagin.g.dart';
part 'campagin.freezed.dart';

@freezed
class KCampaign with _$KCampaign {
  const factory KCampaign(
    String id,
    String slogan,
    DateTime created,
  ) = _KCampaign;
  factory KCampaign.fromJson(Map<String, dynamic> json) => _$KCampaignFromJson(json);
}
