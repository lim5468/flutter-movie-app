import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/domain/model/movie_details/movie_details.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

abstract class MovieRepository {
  Future<List<MovieGenre>> getMoviesGenreList();

  Future<List<Movie>> getMoviesByGenre(MovieGenre genre, int page);

  Future<List<Movie>> getMoviesByCategory(MovieCategory category, int page);

  Future<MovieDetails> getMovieDetails(String id);

  Future<List<Cast>> getMovieCredits(String id);

  Future<List<Video>> getMovieVideos(String id);

  Future<List<MovieImage>> getMoviePosters(String id);

  Future<List<Movie>> searchMovies(String query, int page);
}
