import 'package:flutter/material.dart';

class FullScreenErrorView extends StatelessWidget {
  const FullScreenErrorView({
    required this.message,
    super.key,
    this.onRetryClicked,
  });

  final String message;
  final VoidCallback? onRetryClicked;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: 20),
          if (onRetryClicked != null)
            ElevatedButton(
                onPressed: onRetryClicked, child: const Text('Retry')),
        ],
      ),
    );
  }
}
