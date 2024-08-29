import 'package:injectable/injectable.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/data/repository/movie_repository.dart';

@injectable
class GetMovieVideosUseCase {
  GetMovieVideosUseCase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Video>> execute(String movieId) async {
    final videos = await _movieRepository.getMovieVideos(movieId);
    return videos;
  }
}
