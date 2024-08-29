import 'package:flutter/material.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

class FilterChipsView extends StatefulWidget {
  const FilterChipsView(
      {required this.genres,
      required this.selectedGenres,
      required this.onFilterUpdated,
      super.key});

  final List<MovieGenre> genres;
  final List<MovieGenre> selectedGenres;
  final ValueChanged<List<MovieGenre>> onFilterUpdated;

  @override
  State<FilterChipsView> createState() => _FilterChipsViewState();
}

class _FilterChipsViewState extends State<FilterChipsView> {
  final Set<MovieGenre> filters = <MovieGenre>{};

  @override
  void initState() {
    super.initState();
    filters.addAll(widget.selectedGenres);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 5.0,
        children: widget.genres
            .map((genre) => FilterChip(
                  label: Text(
                    genre.name,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  selected: filters.contains(genre),
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        filters.add(genre);
                      } else {
                        filters.remove(genre);
                      }
                      widget.onFilterUpdated(filters.toList());
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
