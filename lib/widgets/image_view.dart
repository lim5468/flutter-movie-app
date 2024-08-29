import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView(
    this.src, {
    super.key,
    this.width,
    this.height,
    this.size,
    this.fit = BoxFit.cover,
    this.placeholderWidget,
    this.placeholderImageAsset,
    this.backgroundColor,
    this.isLocalSrc = false,
    this.radius,
    this.showBorder = false,
  }) : isAvatar = false;

  const ImageView.avatar(
    this.src, {
    super.key,
    this.width,
    this.height,
    this.size,
    this.fit = BoxFit.cover,
    this.placeholderWidget,
    this.placeholderImageAsset,
    this.backgroundColor,
    this.isLocalSrc = false,
    this.showBorder = false,
  })  : isAvatar = true,
        radius = null;

  final String? src;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;
  final Widget? placeholderWidget;
  final String? placeholderImageAsset;
  final Color? backgroundColor;
  final double? radius;
  final bool isAvatar;
  final bool isLocalSrc;
  final bool showBorder;

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    final width = widget.width ?? widget.size;
    final height = widget.height ?? widget.size;

    frameBuilder(
      BuildContext context,
      Widget child,
      int? frame,
      bool wasSynchronouslyLoaded,
    ) {
      if (wasSynchronouslyLoaded || frame != null) {
        return child;
      }

      return widget.placeholderWidget ??
          (widget.placeholderImageAsset == null
              ? Container(
                  width: width,
                  height: height,
                  color: widget.backgroundColor,
                )
              : Image.asset(
                  widget.placeholderImageAsset!,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  color: widget.backgroundColor,
                  colorBlendMode: BlendMode.dstOver,
                ));
    }

    errorBuilder(BuildContext context, Object error, StackTrace? stackTrace) {
      return widget.placeholderWidget ??
          (widget.placeholderImageAsset == null
              ? Container(
                  width: width,
                  height: height,
                  color: widget.backgroundColor,
                )
              : Image.asset(
                  widget.placeholderImageAsset!,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  color: widget.backgroundColor,
                  colorBlendMode: BlendMode.dstOver,
                ));
    }

    final Image imageWidget;

    if (widget.isLocalSrc) {
      imageWidget = Image.asset(
        widget.src ?? '',
        width: width,
        height: height,
        fit: widget.fit,
        color: widget.backgroundColor,
        colorBlendMode: BlendMode.dstOver,
        cacheWidth: 720,
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
      );
    } else {
      imageWidget = Image.network(
        widget.src ?? '',
        width: width,
        height: height,
        fit: widget.fit,
        color: widget.backgroundColor,
        colorBlendMode: BlendMode.dstOver,
        cacheWidth: 720,
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
      );
    }

    final Widget imageWrapper;

    if (widget.isAvatar) {
      imageWrapper = ClipOval(child: imageWidget);
    } else if (widget.radius != null) {
      imageWrapper = ClipRRect(
        borderRadius: BorderRadius.circular(widget.radius!),
        child: imageWidget,
      );
    } else {
      imageWrapper = imageWidget;
    }

    if (widget.showBorder) {
      return DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(.5),
              width: 2),
          borderRadius: BorderRadius.circular(widget.radius!),
        ),
        child: imageWrapper,
      );
    } else {
      return imageWrapper;
    }
  }
}
