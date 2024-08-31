import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/widgets/image_view.dart';
import 'package:sizer/sizer.dart';

class VideoItemView extends StatelessWidget {
  const VideoItemView({required this.video, super.key}) : isShimmerView = false;

  const VideoItemView.shimmerView({super.key})
      : video = null,
        isShimmerView = true;

  final Video? video;
  final bool isShimmerView;

  @override
  Widget build(BuildContext context) {
    final widget = SizedBox(
      width: 56.w,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: ImageView(
                  height: 56.w / 1.8,
                  width: 56.w,
                  video?.thumbnailUrl,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: constraints.maxHeight / 3,
                ),
              ),
            ],
          );
        },
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
