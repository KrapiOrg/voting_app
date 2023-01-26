import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_state.freezed.dart';

@freezed
class ReactionState with _$ReactionState {
  const factory ReactionState.loading({
    @Default(false) bool isLiked,
    @Default(0) int count,
  }) = _ReactionStateLoading;
  const factory ReactionState.data(
    bool isLiked,
    int count,
  ) = _ReactionStateData;
}
