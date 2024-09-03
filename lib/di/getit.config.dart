// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/repository/movie_repository.dart' as _i721;
import '../domain/usecase/get_movie_casts_usecase.dart' as _i249;
import '../domain/usecase/get_movie_details_usecase.dart' as _i103;
import '../domain/usecase/get_movie_genres_usecase.dart' as _i751;
import '../domain/usecase/get_movie_posters_usecase.dart' as _i883;
import '../domain/usecase/get_movie_videos_usecase.dart' as _i46;
import '../domain/usecase/get_movies_by_category_usecase.dart' as _i696;
import '../domain/usecase/get_movies_by_genre_usecase.dart' as _i356;
import '../domain/usecase/search_movies_usecase.dart' as _i565;
import '../feature/discover/bloc/discover_bloc.dart' as _i741;
import '../feature/home/bloc/home_bloc.dart' as _i1071;
import '../feature/movie_category_listing/bloc/movie_category_listing_bloc.dart'
    as _i734;
import '../feature/movie_details/bloc/movie_details_bloc.dart' as _i221;
import '../feature/search/bloc/search_bloc.dart' as _i314;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i46.GetMovieVideosUseCase>(
        () => _i46.GetMovieVideosUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i249.GetMovieCastsUseCase>(
        () => _i249.GetMovieCastsUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i751.GetMovieGenresUseCase>(
        () => _i751.GetMovieGenresUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i565.SearchMoviesUseCase>(
        () => _i565.SearchMoviesUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i103.GetMovieDetailsUseCase>(
        () => _i103.GetMovieDetailsUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i356.GetMoviesByGenreUseCase>(
        () => _i356.GetMoviesByGenreUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i696.GetMoviesByCategoryUseCase>(
        () => _i696.GetMoviesByCategoryUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i883.GetMoviePostersUseCase>(
        () => _i883.GetMoviePostersUseCase(gh<_i721.MovieRepository>()));
    gh.factory<_i314.SearchBloc>(
        () => _i314.SearchBloc(gh<_i565.SearchMoviesUseCase>()));
    gh.factory<_i1071.HomeBloc>(
        () => _i1071.HomeBloc(gh<_i696.GetMoviesByCategoryUseCase>()));
    gh.factory<_i734.MovieCategoryListingBloc>(() =>
        _i734.MovieCategoryListingBloc(gh<_i696.GetMoviesByCategoryUseCase>()));
    gh.factory<_i221.MovieDetailsBloc>(() => _i221.MovieDetailsBloc(
          gh<_i103.GetMovieDetailsUseCase>(),
          gh<_i883.GetMoviePostersUseCase>(),
          gh<_i46.GetMovieVideosUseCase>(),
          gh<_i249.GetMovieCastsUseCase>(),
        ));
    gh.factory<_i741.DiscoverBloc>(() => _i741.DiscoverBloc(
          gh<_i751.GetMovieGenresUseCase>(),
          gh<_i356.GetMoviesByGenreUseCase>(),
        ));
    return this;
  }
}
