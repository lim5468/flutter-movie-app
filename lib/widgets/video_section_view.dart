import 'package:flutter/material.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:movie_app/widgets/ripple_tap_view.dart';
import 'package:movie_app/widgets/video_item_view.dart';
import 'package:sizer/sizer.dart';

class VideoSectionView extends StatelessWidget {
  const VideoSectionView({
    required this.videos,
    this.isLoading = false,
    this.onItemClicked,
    super.key,
  });

  final List<Video> videos;
  final bool isLoading;
  final void Function(Video video)? onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Videos'.raw,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8.px),
        SizedBox(
          height: 56.w / 1.6,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : videos.length,
            itemBuilder: (context, index) {
              if (isLoading) {
                return const VideoItemView.shimmerView();
              }
              final item = videos[index];
              return RippleTapView(
                onTap: onItemClicked == null
                    ? null
                    : () => onItemClicked?.call(item),
                child: VideoItemView(
                  video: item,
                  key: ValueKey(item.key),
                ),
              );
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
