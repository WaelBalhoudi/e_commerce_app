import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    required this.isDark,
    this.fit=BoxFit.cover,
    required this.image,
    required this.isNetworkImage,
    this.overLayColor,
    this.backgroundColor,
     this.width=56,
     this.height=56,
     this.padding= TSizes.padding_small,
  });

  final bool isDark;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overLayColor;
  final Color? backgroundColor;
  final double? width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        color: backgroundColor ?? (isDark ? TColors.black : TColors.textWhite),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
          fit: fit,
          color: overLayColor,
        ),
      ),
    );
  }
}
