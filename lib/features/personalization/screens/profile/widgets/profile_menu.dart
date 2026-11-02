import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    this.icon=Iconsax.arrow_right_34,
    required this.title,
    required this.value,
    required this.onTop,
  });

  final IconData? icon;
  final String title, value;
  final VoidCallback onTop;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtWItems / 2),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(icon, weight: 18),
          ],
        ),
      ),
    );
  }
}
