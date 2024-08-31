import 'package:flutter/material.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';

class EmptyStateView extends StatelessWidget {
  const EmptyStateView({
    super.key,
    this.message,
    this.onRefreshClick,
    this.height,
    this.padding,
  });

  final String? message;
  final VoidCallback? onRefreshClick;
  final double? height;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No content found'.raw,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
