import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/domain/model/movie_details/movie_details.dart';

@injectable
class GetMovieDetailsUseCase {
  GetMovieDetailsUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<MovieDetails> execute(String movieId) async {
    final movie = await _movieRepository.getMovieDetails(movieId);
    return movie;
  }
}
