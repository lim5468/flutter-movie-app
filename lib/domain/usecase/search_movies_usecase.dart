import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/domain/model/movie/movie.dart';

@injectable
class SearchMoviesUseCase {
  SearchMoviesUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Movie>> execute(String query, int page) async {
    return _movieRepository.searchMovies(query, page);
  }
}
