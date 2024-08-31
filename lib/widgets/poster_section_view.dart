import 'package:flutter/material.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/widgets/image_carousel_view.dart';
import 'package:movie_app/widgets/page_indicator_view.dart';
import 'package:movie_app/widgets/vignette_effect_view.dart';

class PosterSectionView extends StatefulWidget {
  const PosterSectionView({
    required this.images,
    super.key,
  });

  final List<MovieImage> images;

  @override
  State<PosterSectionView> createState() => _PosterSectionViewState();
}

class _PosterSectionViewState extends State<PosterSectionView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: VignetteEffectView(
            child: ImageCarouselView(
              imageUrls: widget.images.map((item) => item.imageUrl).toList(),
              pageController: _pageController,
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: PageIndicatorView(
            pageController: _pageController,
            pageCount: widget.images.length,
          ),
        ),
      ],
    );
  }
}
