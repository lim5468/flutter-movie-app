import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

@injectable
class GetMovieGenresUseCase {
  GetMovieGenresUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<MovieGenre>> execute() async {
    return _movieRepository.getMoviesGenreList();
  }
}
