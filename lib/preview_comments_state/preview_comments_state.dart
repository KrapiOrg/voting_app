import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/models/comment/comment.dart';

part 'preview_comments_state.freezed.dart';

@freezed
class PreviewCommentsState with _$PreviewCommentsState {
  const factory PreviewCommentsState.loading({
    @Default([]) List<KComment> comments,
  }) = _PreviewCommentsStateLoading;
  const factory PreviewCommentsState.data(
    List<KComment> comments,
  ) = _PreviewCommentsStateData;
}
