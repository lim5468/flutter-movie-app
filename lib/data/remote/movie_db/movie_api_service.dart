import 'package:dio/dio.dart';
import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/data/remote/response/getMovieGenreList/get_movie_genre_list_response.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/data/remote/response/getMovieList/get_movie_list_response.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/domain/model/movie_details/movie_details.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api_service.g.dart';

@RestApi()
abstract class MovieApiService {
  factory MovieApiService(Dio dio, {String baseUrl}) = _MovieApiService;

  @GET('/genre/movie/list')
  Future<GetMovieGenreListResponse> getMovieGenreList({
    @Query('api_key') required String apiKey,
  });

  @GET('/discover/movie')
  Future<GetMovieListResponse> getMoviesByGenre({
    @Query('api_key') required String apiKey,
    @Query('with_genres') required String genreIds,
    @Query('sort_by') String? sortBy = 'popularity.desc',
    @Query('page') int? page,
  });

  @GET('/movie/{category}')
  Future<GetMovieListResponse> getMoviesByCategory({
    @Path() required String category,
    @Query('api_key') required String apiKey,
    @Query('page') int? page,
  });

  @GET('/movie/{movieId}')
  Future<MovieDetails> getMovieDetails({
    @Path() required String movieId,
    @Query('api_key') required String apiKey,
  });

  @GET('/movie/{movieId}/credits')
  Future<GetMovieCreditsResponse> getMovieCredits({
    @Path() required String movieId,
    @Query('api_key') required String apiKey,
  });

  @GET('/movie/{movieId}/videos')
  Future<GetMovieVideosResponse> getMovieVideos({
    @Path() required String movieId,
    @Query('api_key') required String apiKey,
    // @Query('language') String? language = 'en',
  });

  @GET('/movie/{movieId}/images')
  Future<GetMovieImagesResponse> getMovieImages({
    @Path() required String movieId,
    @Query('api_key') required String apiKey,
    // @Query('language') String? language = 'en',
  });

  @GET('/search/movie')
  Future<GetMovieListResponse> searchMovies({
    @Query('api_key') required String apiKey,
    @Query('query') required String query,
    @Query('page') int? page,
  });
}
