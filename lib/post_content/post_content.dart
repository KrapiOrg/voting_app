import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_content.g.dart';
part 'post_content.freezed.dart';

@Freezed(unionKey: 'type')
class PostContent with _$PostContent {
  const factory PostContent.text(String text) = _PostContentKrapiText;
  const factory PostContent.image(String link) = _PostContentKrapiImage;
  factory PostContent.fromJson(Map<String, dynamic> json) => _$PostContentFromJson(json);
}
