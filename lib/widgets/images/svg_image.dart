import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProSvgImage extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final Color? color;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;

  /// Using svg images are now more easy with ProSvgImage. Just check parameters and pass values.
  const ProSvgImage({
    Key? key,
    required this.height,
    required this.width,
    required this.imagePath,
    this.color,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius ?? 4),
        ),
      ),
      child: SvgPicture.asset(
        imagePath,
        color: color,
        fit: boxFit ?? BoxFit.contain,
        alignment: imageAlignment ?? Alignment.center,
        height: height,
        width: width,
      ),
    );
  }
}
