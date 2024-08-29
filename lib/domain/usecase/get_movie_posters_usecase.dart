import 'package:injectable/injectable.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/data/repository/movie_repository.dart';

@injectable
class GetMoviePostersUseCase {
  GetMoviePostersUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<MovieImage>> execute(String movieId) async {
    final images = await _movieRepository.getMoviePosters(movieId);
    return images;
  }
}
