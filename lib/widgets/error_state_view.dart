import 'package:flutter/material.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';

class ErrorStateView extends StatelessWidget {
  const ErrorStateView({
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
            'Something went wrong'.raw,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
