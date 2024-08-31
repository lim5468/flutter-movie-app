import 'package:flutter/material.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';

class ScrollEndedStateView extends StatelessWidget {
  const ScrollEndedStateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: Text(
        'No more content'.raw,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
