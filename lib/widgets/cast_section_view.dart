import 'package:flutter/material.dart';
import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/widgets/cast_item_view.dart';
import 'package:movie_app/widgets/ripple_tap_view.dart';
import 'package:sizer/sizer.dart';

class CastSectionView extends StatelessWidget {
  const CastSectionView({
    required this.cast,
    this.isLoading = false,
    this.onItemClicked,
    super.key,
  });

  final List<Cast> cast;
  final bool isLoading;
  final void Function(Cast cast)? onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Cast'.raw,
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
            itemCount: isLoading ? 5 : cast.length,
            itemBuilder: (context, index) {
              if (isLoading) {
                return const CastItemView.shimmerView();
              }
              final item = cast[index];
              return RippleTapView(
                  onTap: onItemClicked == null
                      ? null
                      : () => onItemClicked?.call(item),
                  child: CastItemView(cast: item, key: ValueKey(item.name)));
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
