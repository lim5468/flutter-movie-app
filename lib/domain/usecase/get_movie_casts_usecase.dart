import 'package:injectable/injectable.dart';
import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/data/repository/movie_repository.dart';

@injectable
class GetMovieCastsUseCase {
  GetMovieCastsUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Cast>> execute(String movieId) async {
    final cast = await _movieRepository.getMovieCredits(movieId);
    return cast;
  }
}
