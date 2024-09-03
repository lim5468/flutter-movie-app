import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/feature/movie_category_listing/bloc/movie_category_listing_bloc.dart';
import 'package:movie_app/feature/movie_category_listing/bloc/movie_category_listing_event.dart';
import 'package:movie_app/feature/movie_category_listing/bloc/movie_category_listing_state.dart';
import 'package:movie_app/navigation/navigation.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/widgets/empty_state_view.dart';
import 'package:movie_app/widgets/error_state_view.dart';
import 'package:movie_app/widgets/full_screen_error_view.dart';
import 'package:movie_app/widgets/full_screen_loading_view.dart';
import 'package:movie_app/widgets/movie_item_view.dart';
import 'package:movie_app/widgets/ripple_tap_view.dart';
import 'package:movie_app/widgets/scroll_ended_state_view.dart';

class MovieCategoryListingPage extends StatefulWidget {
  const MovieCategoryListingPage({super.key});

  @override
  State<MovieCategoryListingPage> createState() =>
      _MovieCategoryListingPageState();
}

class _MovieCategoryListingPageState extends State<MovieCategoryListingPage> {
  final PagingController<int, Movie> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<MovieCategoryListingBloc>()
          .add(FetchMovieList(page: pageKey, useDelay: pageKey == 1));
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieCategoryListingBloc, MovieCategoryListingState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                CupertinoSliverRefreshControl(
                  refreshTriggerPullDistance: 125,
                  onRefresh: () async {
                    context
                        .read<MovieCategoryListingBloc>()
                        .add(const Refresh());
                  },
                ),
                SliverAppBar(
                  title: Text(
                    (state is Loaded)
                        ? '${state.movieCategory.displayName} Movies'.raw
                        : '',
                  ),
                ),
                switch (state) {
                  Initial() => SliverToBoxAdapter(child: Container()),
                  Loading() => const SliverFillRemaining(
                      hasScrollBody: false,
                      child: FullScreenLoadingView(),
                    ),
                  final Loaded state => _LoadedView(
                      state: state,
                      pagingController: _pagingController,
                    ),
                  Error(message: final m) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: FullScreenErrorView(
                        message: m,
                        onRetryClicked: () {
                          context
                              .read<MovieCategoryListingBloc>()
                              .add(const Refresh());
                        },
                      ),
                    ),
                },
              ],
            ),
          ),
        );
      },
      listener: (context, state) async {
        if (state is Loaded) {
          final nextPageKey =
              state.lastFetchMoviesPage != 1 && state.lastFetchMoviesSize == 0
                  ? null
                  : (state.lastFetchMoviesPage != null)
                      ? state.lastFetchMoviesPage! + 1
                      : null;

          final items = state.isMovieListLoading && state.movies.isEmpty
              ? null
              : state.movies;

          _pagingController.value = PagingState(
            nextPageKey: nextPageKey,
            itemList: items,
            error: state.movieListError,
          );
        }
      },
    );
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView({
    required this.state,
    required this.pagingController,
    super.key,
  });

  final Loaded state;
  final PagingController<int, Movie> pagingController;

  @override
  Widget build(BuildContext context) {
    return PaginatedMovieListView(
      pagingController: pagingController,
    );
  }
}

class PaginatedMovieListView extends StatelessWidget {
  const PaginatedMovieListView({required this.pagingController, super.key});

  final PagingController<int, Movie> pagingController;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: PagedSliverGrid(
        showNewPageProgressIndicatorAsGridChild: false,
        showNewPageErrorIndicatorAsGridChild: false,
        showNoMoreItemsIndicatorAsGridChild: false,
        pagingController: pagingController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2 / 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
        ),
        builderDelegate:
            getListItemDelegate(Theme.of(context).colorScheme.onSurface),
      ),
    );
  }

  PagedChildBuilderDelegate<Movie> getListItemDelegate(Color shimmerColor) {
    return PagedChildBuilderDelegate<Movie>(
      itemBuilder: (context, item, index) {
        return Builder(
          builder: (BuildContext context) {
            return RippleTapView(
              onTap: () => routeToMovieDetails(context, item.id),
              child: MovieItemView(
                movie: item,
              ),
            );
          },
        );
      },
      firstPageProgressIndicatorBuilder: (_) => Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          ...List.generate(
            12,
            (_) => Animate(
              effects: const [ShimmerEffect(duration: Duration(seconds: 1))],
              onPlay: (controller) => controller.repeat(),
              child: const MovieItemView.shimmerView(),
            ),
          ),
        ],
      ),
      firstPageErrorIndicatorBuilder: (_) => const ErrorStateView(),
      noItemsFoundIndicatorBuilder: (_) => const EmptyStateView(),
      noMoreItemsIndicatorBuilder: (_) => const ScrollEndedStateView(),
    );
  }
}
