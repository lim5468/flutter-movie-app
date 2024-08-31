import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_event.freezed.dart';

@freezed
sealed class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.init({
    required int movieId,
  }) = Init;

  const factory MovieDetailsEvent.refresh() = Refresh;
}
