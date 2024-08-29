import 'package:flutter/material.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/widgets/movie_item_view.dart';
import 'package:sizer/sizer.dart';

class MovieCategorySectionView extends StatelessWidget {
  const MovieCategorySectionView({
    required this.category,
    required this.movies,
    this.isLoading = false,
    super.key,
  });

  final MovieCategory category;
  final List<Movie> movies;
  final bool isLoading;

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
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8.px),
        SizedBox(
          height: 28.w * 2,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : movies.length,
            itemBuilder: (context, index) {
              if (isLoading) {
                return const MovieItemView.shimmerView();
              }
              final item = movies[index];
              return MovieItemView(movie: item, key: ValueKey(item.id));
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 4.px);
            },
          ),
        ),
        SizedBox(height: 16.px),
      ],
    );
  }
}
