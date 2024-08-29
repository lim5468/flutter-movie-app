import 'package:flutter/material.dart';

class FullScreenLoadingView extends StatelessWidget {
  const FullScreenLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
