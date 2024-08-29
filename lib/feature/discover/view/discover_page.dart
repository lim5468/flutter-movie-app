import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';
import 'package:movie_app/feature/discover/bloc/discover_bloc.dart';
import 'package:movie_app/feature/discover/bloc/discover_event.dart';
import 'package:movie_app/feature/discover/bloc/discover_state.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/widgets/filter_chips_view.dart';
import 'package:movie_app/widgets/full_screen_error_view.dart';
import 'package:movie_app/widgets/full_screen_loading_view.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiscoverBloc, DiscoverState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover'.raw,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: switch (state) {
                    Initial() => Container(),
                    Loading() => const FullScreenLoadingView(),
                    final Loaded state => _LoadedView(
                        state: state,
                      ),
                    Error(message: final m) => FullScreenErrorView(
                        message: m,
                        onRetryClicked: () {
                          context.read<DiscoverBloc>().add(const Refresh());
                        },
                      ),
                  },
                ),
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
    return RefreshIndicator(
      onRefresh: () async {
        context.read<DiscoverBloc>().add(const Refresh());
      },
      child: Column(
        children: [
          FilterChipsView(
            genres: state.movieGenres,
            selectedGenres: state.selectedMovieGenres,
            onFilterUpdated: (List<MovieGenre> value) {
              context
                  .read<DiscoverBloc>()
                  .add(SetMovieGenres(movieGenres: value));
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                final item = state.movies[index];

                return Card(
                  child: ListTile(
                    title: Text(
                      item.title ?? '',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
