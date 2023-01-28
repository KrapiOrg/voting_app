import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'paginator_state.freezed.dart';

@freezed
class PaginatorState<T> with _$PaginatorState<T> {
  const factory PaginatorState.initial({
    @Default([]) List<T> data,
    @Default(null) UnsubscribeFunc? cleanup,
  }) = _PaginatorStateInitial;

  const factory PaginatorState.data({
    required List<T> data,
    UnsubscribeFunc? cleanup,
  }) = _PaginatorStateData;

  const factory PaginatorState.loading({
    required List<T> data,
    UnsubscribeFunc? cleanup,
  }) = _PaginatorStateLoading;
}
