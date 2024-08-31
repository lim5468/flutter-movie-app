import 'dart:math';

import 'package:flutter/material.dart';

class PageIndicatorView extends StatefulWidget {
  const PageIndicatorView({
    required this.pageController,
    required this.pageCount,
    super.key,
    this.width = 12,
    this.height = 8,
  });

  final PageController pageController;

  final int pageCount;
  final double width;
  final double height;

  @override
  State<PageIndicatorView> createState() => _PageIndicatorViewState();
}

class _PageIndicatorViewState extends State<PageIndicatorView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.pageCount, (index) {
        return AnimatedBuilder(
          animation: widget.pageController,
          builder: (context, child) {
            final selectedness = Curves.linear.transform(
              max(
                0,
                1.0 - ((widget.pageController.page ?? 0) - index).abs(),
              ),
            );

            final scale = 1.0 + (selectedness);

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: index == (widget.pageController.page ?? 0).round()
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
              width: widget.width * scale,
              height: widget.height,
            );
          },
        );
      }),
    );
  }
}
