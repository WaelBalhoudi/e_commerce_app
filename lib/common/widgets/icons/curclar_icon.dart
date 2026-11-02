import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  final IconData icon;
  final Color? color,backgroundColor;
  final double? size,width,height;
  final  VoidCallback? onPressed;

  const TCircularIcon({
    super.key,
    required this.icon,
    this.color,
    this.size = 20, this.width, this.height, this.backgroundColor, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      padding: EdgeInsets.all(TSizes.padding_small/2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(child: Icon(icon, color: color, size: size),),
    );
  }
}
