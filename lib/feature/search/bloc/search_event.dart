import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = Init;

  const factory SearchEvent.updateQuery({
    required String query,
  }) = UpdateQuery;

  const factory SearchEvent.fetchPage({
    required int page,
  }) = FetchPage;
}
