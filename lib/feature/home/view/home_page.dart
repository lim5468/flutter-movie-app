import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/feature/home/bloc/home_bloc.dart';
import 'package:movie_app/feature/home/bloc/home_event.dart';
import 'package:movie_app/feature/home/bloc/home_state.dart';
import 'package:movie_app/navigation/navigation.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/widgets/full_screen_error_view.dart';
import 'package:movie_app/widgets/full_screen_loading_view.dart';
import 'package:movie_app/widgets/movie_category_section_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                CupertinoSliverRefreshControl(
                  refreshTriggerPullDistance: 125,
                  onRefresh: () async {
                    context.read<HomeBloc>().add(const Refresh());
                  },
                ),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Home'.raw,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                )),
                switch (state) {
                  Initial() => SliverToBoxAdapter(child: Container()),
                  Loading() => const SliverFillRemaining(
                      hasScrollBody: false, child: FullScreenLoadingView()),
                  final Loaded state => _LoadedView(
                      state: state,
                    ),
                  Error(message: final m) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: FullScreenErrorView(
                        message: m,
                        onRetryClicked: () {
                          context.read<HomeBloc>().add(const Refresh());
                        },
                      ),
                    ),
                },
              ],
            ),
          ),
        );
      },
      listener: (context, state) async {},
    );
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView({required this.state, super.key});

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        MovieCategorySectionView(
          key: state.isNowPlayingListLoading
              ? null
              : ValueKey(MovieCategory.nowPlaying.name),
          category: MovieCategory.nowPlaying,
          movies: state.nowPlayingMovies,
          isLoading: state.isNowPlayingListLoading,
          onMovieItemClicked: (movie) => routeToMovieDetails(context, movie.id),
        ),
        MovieCategorySectionView(
          key: state.isNowPlayingListLoading
              ? null
              : ValueKey(MovieCategory.popular.name),
          category: MovieCategory.popular,
          movies: state.popularMovies,
          isLoading: state.isPopularListLoading,
          onMovieItemClicked: (movie) => routeToMovieDetails(context, movie.id),
        ),
        MovieCategorySectionView(
          key: state.isNowPlayingListLoading
              ? null
              : ValueKey(MovieCategory.topRated.name),
          category: MovieCategory.topRated,
          movies: state.topRatedMovies,
          isLoading: state.isTopRatedListLoading,
          onMovieItemClicked: (movie) => routeToMovieDetails(context, movie.id),
        ),
        MovieCategorySectionView(
          key: state.isNowPlayingListLoading
              ? null
              : ValueKey(MovieCategory.upcoming.name),
          category: MovieCategory.upcoming,
          movies: state.upcomingMovies,
          isLoading: state.isUpcomingListLoading,
          onMovieItemClicked: (movie) => routeToMovieDetails(context, movie.id),
        ),
      ],
    );
  }
}
