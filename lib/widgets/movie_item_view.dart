import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/widgets/image_view.dart';
import 'package:sizer/sizer.dart';

class MovieItemView extends StatelessWidget {
  const MovieItemView({required this.movie, super.key}) : isShimmerView = false;

  const MovieItemView.shimmerView({super.key})
      : movie = null,
        isShimmerView = true;

  final Movie? movie;
  final bool isShimmerView;

  @override
  Widget build(BuildContext context) {
    final widget = SizedBox(
      width: 28.w,
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: ImageView(
              height: 28.w * 1.5,
              width: 28.w,
              movie?.posterUrl,
            ),
          ),
          Text(
            movie?.title ?? '',
            style: Theme.of(context).textTheme.titleSmall,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );

    return isShimmerView
        ? Animate(
            effects: const [ShimmerEffect(duration: Duration(seconds: 1))],
            onPlay: (controller) => controller.repeat(),
            child: widget,
          )
        : widget;
  }
}
