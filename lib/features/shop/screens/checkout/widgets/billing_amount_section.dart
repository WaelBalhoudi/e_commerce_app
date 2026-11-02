import 'package:e_commerce_app/features/shop/screens/checkout/widgets/pricing_row.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PricingRow(title: "Subtitle",price: 255,),
        SizedBox(height: TSizes.spaceBtWItems / 2,),
        PricingRow(title: "Shipping Fee",price: 25,),
        SizedBox(height: TSizes.spaceBtWItems / 2,),

        PricingRow(title: "Tax Fee",price: 25,),
        SizedBox(height: TSizes.spaceBtWItems / 2,),

        PricingRow(title: "Order Total",price: 350,),


      ],
    );
  }
}
