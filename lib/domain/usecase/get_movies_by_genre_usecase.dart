import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

@injectable
class GetMoviesByGenreUseCase {
  GetMoviesByGenreUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Movie>> execute(MovieGenre genre, int page) async {
    return _movieRepository.getMoviesByGenre(genre, page);
  }
}
