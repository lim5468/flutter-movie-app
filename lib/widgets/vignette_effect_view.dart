import 'package:flutter/material.dart';

class VignetteEffectView extends StatelessWidget {
  const VignetteEffectView({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.surface,
                    Theme.of(context).colorScheme.surface.withOpacity(.2),
                    Theme.of(context).colorScheme.surface.withOpacity(0),
                    Theme.of(context).colorScheme.surface.withOpacity(0),
                    Theme.of(context).colorScheme.surface.withOpacity(.2),
                    Theme.of(context).colorScheme.surface,
                  ],
                  stops: const [0.0, .1, .15, .85, .9, 1],
                  // focalRadius: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
