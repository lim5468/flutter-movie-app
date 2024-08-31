import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/feature/movie_details/bloc/movie_details_bloc.dart';
import 'package:movie_app/feature/movie_details/bloc/movie_details_event.dart';
import 'package:movie_app/feature/movie_details/bloc/movie_details_state.dart';
import 'package:movie_app/navigation/navigation.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/utils/extensions/time_helper.dart';
import 'package:movie_app/widgets/cast_section_view.dart';
import 'package:movie_app/widgets/expandable_text_view.dart';
import 'package:movie_app/widgets/full_screen_error_view.dart';
import 'package:movie_app/widgets/full_screen_loading_view.dart';
import 'package:movie_app/widgets/poster_section_view.dart';
import 'package:movie_app/widgets/video_section_view.dart';
import 'package:sizer/sizer.dart';

class MovieDetailsPage extends StatefulWidget {
  const MovieDetailsPage({super.key});

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: CustomScrollView(
            slivers: [
              CupertinoSliverRefreshControl(
                refreshTriggerPullDistance: 125,
                onRefresh: () async {
                  context.read<MovieDetailsBloc>().add(const Refresh());
                },
              ),
              SliverAppBar(
                expandedHeight: (state is Loaded) ? Device.width : null,
                flexibleSpace: FlexibleSpaceBar(
                  background: (state is Loaded)
                      ? PosterSectionView(
                          images: state.images,
                        )
                      : null,
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
                  ),
                Error(message: final m) => SliverFillRemaining(
                    hasScrollBody: false,
                    child: FullScreenErrorView(
                      message: m,
                      onRetryClicked: () {
                        context.read<MovieDetailsBloc>().add(const Refresh());
                      },
                    ),
                  ),
              },
            ],
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
        SizedBox(height: 8.px),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            state.movieDetails.title ?? '',
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8.px),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Text('Release Date: ${state.movieDetails.releaseDate ?? ''}'.raw),
        ),
        SizedBox(height: 4.px),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Run Time: ${state.movieDetails.runtime?.formattedDuration ?? ''}'
                .raw,
          ),
        ),
        SizedBox(height: 16.px),
        if (state.movieDetails.overview != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Overview'.raw,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8.px),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ExpandableTextView(text: state.movieDetails.overview!),
              ),
              SizedBox(height: 16.px),
            ],
          ),
        if (state.videos.isNotEmpty || state.isVideosLoading)
          VideoSectionView(
            videos: state.videos,
            isLoading: state.isVideosLoading,
            onItemClicked: (video) {
              if (video.key != null) {
                routeToYoutubePlayer(context, video.key!);
              }
            },
          ),
        if (state.cast.isNotEmpty || state.isCastLoading)
          CastSectionView(
            cast: state.cast,
            isLoading: state.isCastLoading,
          ),
      ],
    );
  }
}
