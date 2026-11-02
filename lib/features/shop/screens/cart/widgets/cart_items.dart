import 'package:e_commerce_app/common/widgets/product_quantity.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    required this.dark,  this.showAddRemoveButtons=true,
  });

  final bool dark,showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder:
          (_, __) => SizedBox(height: TSizes.spaceBtWSections),
      itemCount: 3,
      itemBuilder:
          (_, __) => Column(
        children: [
          TCartItem(dark: dark),
          if(showAddRemoveButtons==true) SizedBox(height: TSizes.spaceBtWItems),
          if(showAddRemoveButtons==true)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),

                  TProductQuantity(dark: dark),
                ],
              ),
              TProductPriceText(price: "256")
            ],
          ),
        ],
      ),
    );
  }
}

