import 'package:flutter/material.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/widgets/movie_item_view.dart';
import 'package:movie_app/widgets/ripple_tap_view.dart';
import 'package:sizer/sizer.dart';

class MovieCategorySectionView extends StatelessWidget {
  const MovieCategorySectionView({
    required this.category,
    required this.movies,
    this.isLoading = false,
    this.onMovieItemClicked,
    this.onViewMoreClicked,
    super.key,
  });

  final MovieCategory category;
  final List<Movie> movies;
  final bool isLoading;
  final void Function(Movie movie)? onMovieItemClicked;
  final VoidCallback? onViewMoreClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            category.displayName,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8.px),
        SizedBox(
          height: 28.w * 2,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : movies.length + 1,
            itemBuilder: (context, index) {
              if (isLoading) {
                return const MovieItemView.shimmerView();
              }

              if (index == movies.length) {
                return Align(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextButton(
                      onPressed: onViewMoreClicked,
                      child: Row(
                        children: [
                          Text(
                            'View More',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

              final item = movies[index];

              return RippleTapView(
                onTap: onMovieItemClicked == null
                    ? null
                    : () => onMovieItemClicked?.call(item),
                child: MovieItemView(movie: item, key: ValueKey(item.id)),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 8.px);
            },
          ),
        ),
        SizedBox(height: 16.px),
      ],
    );
  }
}
