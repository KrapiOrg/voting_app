import 'package:freezed_annotation/freezed_annotation.dart';

part 'kcontent.g.dart';
part 'kcontent.freezed.dart';

@Freezed(unionKey: 'type')
class KContent with _$KContent {
  const factory KContent.text({
    required String id,
    required String ownerId,
    required String text,
  }) = _KContentKrapiText;
  const factory KContent.image({
    required String id,
    required String ownerId,
    required String imageLink,
  }) = _KContentKrapiImage;
  factory KContent.fromJson(Map<String, dynamic> json) => _$KContentFromJson(json);
}
