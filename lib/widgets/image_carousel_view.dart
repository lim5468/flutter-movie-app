import 'package:flutter/material.dart';
import 'package:movie_app/widgets/image_view.dart';

class ImageCarouselView extends StatefulWidget {
  const ImageCarouselView(
      {required this.imageUrls, required this.pageController, super.key});

  final List<String> imageUrls;
  final PageController pageController;

  @override
  State<ImageCarouselView> createState() => _ImageCarouselViewState();
}

class _ImageCarouselViewState extends State<ImageCarouselView> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.pageController,
      itemCount: widget.imageUrls.length,
      itemBuilder: (context, index) {
        return ImageView(
          widget.imageUrls[index],
        );
      },
    );
  }
}
