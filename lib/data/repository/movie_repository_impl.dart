import 'package:movie_app/data/remote/movie_db/movie_api_service.dart';
import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/domain/model/movie_details/movie_details.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this.apiService, this.apiKey);

  final MovieApiService apiService;
  final String apiKey;

  @override
  Future<MovieDetails> getMovieDetails(String id) async {
    return apiService.getMovieDetails(apiKey: apiKey, movieId: id);
  }

  @override
  Future<List<Movie>> getMoviesByCategory(
    MovieCategory category,
    int page,
  ) async {
    final result = await apiService.getMoviesByCategory(
      apiKey: apiKey,
      category: category.name,
      page: page,
    );

    return result.results;
  }

  @override
  Future<List<Movie>> getMoviesByGenres(
      List<MovieGenre> genres, int page) async {
    final result = await apiService.getMoviesByGenre(
      apiKey: apiKey,
      genreIds: genres.map((e) => e.id).join(','),
      page: page,
    );
    return result.results;
  }

  @override
  Future<List<Movie>> searchMovies(String query, int page) async {
    final result =
        await apiService.searchMovies(apiKey: apiKey, query: query, page: page);
    return result.results;
  }

  @override
  Future<List<MovieGenre>> getMoviesGenreList() async {
    final result = await apiService.getMovieGenreList(apiKey: apiKey);
    return result.genres;
  }

  @override
  Future<List<Cast>> getMovieCredits(String id) async {
    final result =
        await apiService.getMovieCredits(apiKey: apiKey, movieId: id);
    return result.list;
  }

  @override
  Future<List<MovieImage>> getMoviePosters(String id) async {
    final result = await apiService.getMovieImages(apiKey: apiKey, movieId: id);
    return result.posters;
  }

  @override
  Future<List<Video>> getMovieVideos(String id) async {
    final result = await apiService.getMovieVideos(apiKey: apiKey, movieId: id);
    return result.list;
  }
}
