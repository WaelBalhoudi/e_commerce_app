import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/product/products_cart/product_cart.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: Theme.of(context).textTheme.labelMedium!.apply(
              color: TColors.textWhite.withOpacity(.9),
            ),
          ),
          Text(
            "Taimoor Sikander",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: TColors.textWhite),
          ),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.textWhite),
      ],
    );
  }
}
