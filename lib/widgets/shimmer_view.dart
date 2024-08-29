import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView({
    required this.width,
    required this.height,
    super.key,
    this.radius = 16,
    this.color,
  });

  const ShimmerView.square(
    double size, {
    super.key,
    this.radius = 16,
    this.color,
  })  : width = size,
        height = size;

  final double width;
  final double height;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [ShimmerEffect(duration: Duration(seconds: 1))],
      onPlay: (controller) => controller.repeat(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
      ),
    );
  }
}
