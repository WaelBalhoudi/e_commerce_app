import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundImage extends StatelessWidget {
  final double? width, height;

  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double borderRadius;

  const TRoundImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width ,
    this.height ,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.boxFit = BoxFit.contain,
    this.backgroundColor = TColors.light,
    this.isNetworkImage = false,
    this.borderRadius=TSizes.borderRadiusMd,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,

        decoration: BoxDecoration(
          border: border,
          color:backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child: Image(
        fit: boxFit,
        image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
      ),
        ),
      ),
    );
  }
}
