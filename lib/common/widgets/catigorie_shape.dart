import 'package:e_commerce_app/common/widgets/custom_shapes/container/ciruclar_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor =Colors.white,
    this.backgroundColor =Colors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtWItems),
        child: Column(
          children: [
            TCircularContainer(
              backgroundColor:backgroundColor,
              width: 56,
              height: 56,
              padding: TSizes.padding_small,
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: TColors.dark,
                ),
              ),
            ),
            SizedBox(height: TSizes.spaceBtWItems / 2),

            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color:textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}