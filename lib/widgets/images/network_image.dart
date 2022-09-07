import 'package:flutter/material.dart';

class ProNetworkImage extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final Map<String, String>? headers;
  final double? scale;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;
  final Widget? child;

  /// Using network image is now more easy with ProNetworkImage. Just check parameters and pass values.
  const ProNetworkImage({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.scale,
    this.headers,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius ?? 4),
        ),
        image: DecorationImage(
          alignment: imageAlignment ?? Alignment.center,
          fit: boxFit ?? BoxFit.contain,
          image: headers != null && scale != null
              ? NetworkImage(
                  imageUrl,
                  headers: headers,
                  scale: scale!,
                )
              : NetworkImage(
                  imageUrl,
                ),
        ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
