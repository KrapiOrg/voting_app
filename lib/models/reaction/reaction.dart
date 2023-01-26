import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction.freezed.dart';
part 'reaction.g.dart';

@freezed
class KReaction with _$KReaction {
  const factory KReaction({
    required String postId,
    required String ownerId,
    required DateTime timestamp,
  }) = _KReaction;
  factory KReaction.fromJson(Map<String, dynamic> json) => _$KReactionFromJson(json);
}
