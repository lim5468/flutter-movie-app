import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/di/getit.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/feature/movie_category_listing/movie_category_listing.dart'
    as movie_category_listing;
import 'package:movie_app/feature/movie_details/movie_details.dart'
    as movie_details;
import 'package:movie_app/feature/youtube_player/youtube_player_page.dart';
import 'package:movie_app/utils/focus_helper.dart';

void routeToMovieCategoryListing(
  BuildContext context,
  MovieCategory movieCategory,
) {
  FocusHelper.clearFocus();

  final route = BlocProvider<movie_category_listing.MovieCategoryListingBloc>(
    create: (BuildContext context) =>
        getIt.get<movie_category_listing.MovieCategoryListingBloc>()
          ..add(const movie_category_listing.Init())
          ..add(
            movie_category_listing.SetMovieCategory(
              movieCategory: movieCategory,
            ),
          ),
    child: const movie_category_listing.MovieCategoryListingPage(),
  );

  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (context) => route,
    ),
  );
}

void routeToMovieDetails(BuildContext context, int movieId) {
  FocusHelper.clearFocus();

  final route = BlocProvider<movie_details.MovieDetailsBloc>(
    create: (BuildContext context) =>
        getIt.get<movie_details.MovieDetailsBloc>()
          ..add(movie_details.Init(movieId: movieId)),
    child: const movie_details.MovieDetailsPage(),
  );

  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (context) => route,
    ),
  );
}

void routeToYoutubePlayer(BuildContext context, String youtubeVideoId) {
  FocusHelper.clearFocus();

  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (context) => YoutubePlayerPage(
        youtubeVideoId: youtubeVideoId,
      ),
    ),
  );
}
