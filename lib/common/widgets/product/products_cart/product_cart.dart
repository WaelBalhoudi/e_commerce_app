import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? iconColor;

  const TCartCounterIcon({
    super.key, required this.onPressed,  this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_cart,color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.textWhite),)),
          ),
        )
      ],
    );
  }
}
