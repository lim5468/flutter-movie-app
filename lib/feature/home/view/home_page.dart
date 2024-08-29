import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/feature/home/bloc/home_bloc.dart';
import 'package:movie_app/feature/home/bloc/home_event.dart';
import 'package:movie_app/feature/home/bloc/home_state.dart';
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
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Home'.raw,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  )),
                ];
              },
              body: switch (state) {
                Initial() => Container(),
                Loading() => const FullScreenLoadingView(),
                final Loaded state => _LoadedView(
                    state: state,
                  ),
                Error(message: final m) => FullScreenErrorView(
                    message: m,
                    onRetryClicked: () {
                      context.read<HomeBloc>().add(const Refresh());
                    },
                  ),
              },
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
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>().add(const Refresh());
      },
      child: ListView(
        children: [
          MovieCategorySectionView(
            key: state.isNowPlayingListLoading
                ? null
                : ValueKey(MovieCategory.nowPlaying.name),
            category: MovieCategory.nowPlaying,
            movies: state.nowPlayingMovies,
            isLoading: state.isNowPlayingListLoading,
          ),
          MovieCategorySectionView(
            key: state.isNowPlayingListLoading
                ? null
                : ValueKey(MovieCategory.popular.name),
            category: MovieCategory.popular,
            movies: state.popularMovies,
            isLoading: state.isPopularListLoading,
          ),
          MovieCategorySectionView(
            key: state.isNowPlayingListLoading
                ? null
                : ValueKey(MovieCategory.topRated.name),
            category: MovieCategory.topRated,
            movies: state.topRatedMovies,
            isLoading: state.isTopRatedListLoading,
          ),
          MovieCategorySectionView(
            key: state.isNowPlayingListLoading
                ? null
                : ValueKey(MovieCategory.upcoming.name),
            category: MovieCategory.upcoming,
            movies: state.upcomingMovies,
            isLoading: state.isUpcomingListLoading,
          ),
        ],
      ),
    );
  }
}
