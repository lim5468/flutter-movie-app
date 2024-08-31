import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/feature/search/bloc/search_bloc.dart';
import 'package:movie_app/feature/search/bloc/search_event.dart';
import 'package:movie_app/feature/search/bloc/search_state.dart';
import 'package:movie_app/navigation/navigation.dart';
import 'package:movie_app/utils/debouncer.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/widgets/empty_state_view.dart';
import 'package:movie_app/widgets/error_state_view.dart';
import 'package:movie_app/widgets/full_screen_error_view.dart';
import 'package:movie_app/widgets/full_screen_loading_view.dart';
import 'package:movie_app/widgets/movie_item_view.dart';
import 'package:movie_app/widgets/ripple_tap_view.dart';
import 'package:movie_app/widgets/scroll_ended_state_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({this.searchFocusNode, super.key});

  final FocusNode? searchFocusNode;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final PagingController<int, Movie> _pagingController =
      PagingController(firstPageKey: 1);

  final _searchInputController = TextEditingController();
  final _searchDebouncer = Debouncer(milliseconds: 700);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<SearchBloc>().add(FetchPage(page: pageKey));
    });

    _searchInputController.addListener(() {
      _searchDebouncer.run(() {
        context.read<SearchBloc>().add(
              UpdateQuery(
                query: _searchInputController.text,
              ),
            );
      });
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _searchInputController.dispose();
    _searchDebouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'Search'.raw,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        StatefulBuilder(
                          builder: (context, setState) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: SearchBar(
                                controller: _searchInputController,
                                focusNode: widget.searchFocusNode,
                                onTapOutside: (event) {
                                  widget.searchFocusNode?.unfocus();
                                },
                                hintText: 'Type something...'.raw,
                                leading: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Icon(Icons.search),
                                ),
                                trailing: _searchInputController.text.isEmpty
                                    ? null
                                    : [
                                        IconButton(
                                          onPressed: () {
                                            context.read<SearchBloc>().add(
                                                  const UpdateQuery(query: ''),
                                                );
                                            _searchInputController.clear();
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.clear),
                                        ),
                                      ],
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: switch (state) {
                Initial() => Container(),
                Loading() => const FullScreenLoadingView(),
                final Loaded state => _LoadedView(
                    state: state,
                    pagingController: _pagingController,
                    searchInputController: _searchInputController,
                  ),
                Error(message: final m) => FullScreenErrorView(
                    message: m,
                  ),
              },
            ),
          ),
        );
      },
      listener: (context, state) async {
        if (state is Loaded) {
          final nextPageKey = state.lastSearchResultsPage != 1 &&
                  state.lastSearchResultsSize == 0
              ? null
              : (state.lastSearchResultsPage != null)
                  ? state.lastSearchResultsPage! + 1
                  : null;

          final items =
              state.isSearching && state.movies.isEmpty ? null : state.movies;

          _pagingController.value = PagingState(
            nextPageKey: nextPageKey,
            itemList: items,
            error: state.searchError,
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
    required this.searchInputController,
    super.key,
  });

  final Loaded state;
  final PagingController<int, Movie> pagingController;
  final TextEditingController searchInputController;

  @override
  Widget build(BuildContext context) {
    final hasQuery = state.currentQuery?.isNotEmpty ?? false;

    if (!hasQuery) {
      return SearchHistoryView(
        searchHistory: state.queryHistory,
        onSearchItemClicked: (String value) {
          searchInputController.text = value;
        },
      );
    }

    return PaginatedMovieListView(
      pagingController: pagingController,
    );
  }
}

class PaginatedMovieListView extends StatelessWidget {
  const PaginatedMovieListView({
    required this.pagingController,
    super.key,
  });

  final PagingController<int, Movie> pagingController;

  @override
  Widget build(BuildContext context) {
    return PagedGridView(
      padding: const EdgeInsets.all(16),
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
      builderDelegate: getListItemDelegate(
        Theme.of(context).colorScheme.onSurface,
      ),
    );
  }

  PagedChildBuilderDelegate<Movie> getListItemDelegate(Color shimmerColor) {
    return PagedChildBuilderDelegate<Movie>(
      itemBuilder: (context, item, index) {
        return Builder(
          builder: (BuildContext context) => RippleTapView(
            onTap: () => routeToMovieDetails(context, item.id),
            child: MovieItemView(
              movie: item,
            ),
          ),
        );
      },
      firstPageProgressIndicatorBuilder: (_) => const FullScreenLoadingView(),
      firstPageErrorIndicatorBuilder: (_) => const ErrorStateView(),
      noItemsFoundIndicatorBuilder: (_) => const EmptyStateView(),
      noMoreItemsIndicatorBuilder: (_) => const ScrollEndedStateView(),
    );
  }
}

class SearchHistoryView extends StatelessWidget {
  const SearchHistoryView({
    required this.searchHistory,
    required this.onSearchItemClicked,
    super.key,
  });

  final List<String> searchHistory;
  final ValueChanged<String> onSearchItemClicked;

  @override
  Widget build(BuildContext context) {
    if (searchHistory.isEmpty) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Recent Searches'.raw,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          const SizedBox(height: 8),
          ...searchHistory.map(
            (item) => ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onTap: () => onSearchItemClicked(item),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              minTileHeight: 0,
              leading: Icon(
                Icons.history,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                item,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
