import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/widgets/image_view.dart';
import 'package:sizer/sizer.dart';

class CastItemView extends StatelessWidget {
  const CastItemView({required this.cast, super.key}) : isShimmerView = false;

  const CastItemView.shimmerView({super.key})
      : cast = null,
        isShimmerView = true;

  final Cast? cast;
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
              height: 28.w * 1.2,
              width: 28.w,
              cast?.profileUrl,
            ),
          ),
          Text(
            cast?.name ?? '',
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
