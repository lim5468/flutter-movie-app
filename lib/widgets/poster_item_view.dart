import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/widgets/image_view.dart';
import 'package:sizer/sizer.dart';

class PosterItemView extends StatelessWidget {
  const PosterItemView({required this.image, super.key})
      : isShimmerView = false;

  const PosterItemView.shimmerView({super.key})
      : image = null,
        isShimmerView = true;

  final MovieImage? image;
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
              image?.imageUrl,
            ),
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
