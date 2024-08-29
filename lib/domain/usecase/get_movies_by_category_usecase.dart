import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';

@injectable
class GetMoviesByCategoryUseCase {
  GetMoviesByCategoryUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Movie>> execute(MovieCategory category, int page) async {
    return _movieRepository.getMoviesByCategory(category, page);
  }
}
