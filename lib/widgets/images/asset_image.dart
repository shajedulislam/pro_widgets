import 'package:flutter/material.dart';

class ProAssetImage extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;
  final Widget? child;

  /// Using asset image is now more easy with ProAssetImage. Just check parameters and pass values.
  const ProAssetImage({
    Key? key,
    required this.height,
    required this.width,
    required this.imagePath,
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
          image: AssetImage(imagePath),
        ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
