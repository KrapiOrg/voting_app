import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_state.freezed.dart';

@freezed
class ReactionState with _$ReactionState {
  const factory ReactionState.loading({
    @Default(false) bool isLiked,
    @Default('') String? reactionId,
  }) = _ReactionStateLoading;
  const factory ReactionState.data(
    bool isLiked,
    String? reactionId,
  ) = _ReactionStateData;
}
