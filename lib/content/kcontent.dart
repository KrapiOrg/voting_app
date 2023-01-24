import 'package:freezed_annotation/freezed_annotation.dart';

part 'kcontent.g.dart';
part 'kcontent.freezed.dart';

@Freezed(unionKey: 'type')
class KContent with _$KContent {
  const factory KContent.text(String text) = _KContentKrapiText;
  const factory KContent.image(String imageLink) = _KContentKrapiImage;
  factory KContent.fromJson(Map<String, dynamic> json) => _$KContentFromJson(json);
}
