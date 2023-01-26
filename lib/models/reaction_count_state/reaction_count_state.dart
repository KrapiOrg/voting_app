import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_count_state.freezed.dart';

@freezed
class ReactionCountState with _$ReactionCountState {
  const factory ReactionCountState.loading(int count) = _ReactionCountStateLoading;
  const factory ReactionCountState.data(int count) = _ReactionCountStateData;
}
