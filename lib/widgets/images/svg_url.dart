import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProSvgURL extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final Color? color;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;

  /// Using svg URL images are now more easy with ProSvgURL. Just check parameters and pass values.
  const ProSvgURL({
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
          Radius.circular(borderRadius ?? 0),
        ),
      ),
      child: SvgPicture.network(
        imagePath,
        fit: boxFit ?? BoxFit.contain,
        alignment: imageAlignment ?? Alignment.center,
        height: height,
        width: width,
      ),
    );
  }
}
