import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: ()=>{},
        ),
        Text("Coding with Wael Balhoudi",style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBtWItems/2,),

        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,weight: 16,),
            SizedBox(width: TSizes.spaceBtWItems,),
            Text("+216 54 213 094",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems/2,),
        Row(
          children: [
            Icon(Icons.location_history,color: Colors.grey,weight: 16,),
            SizedBox(width: TSizes.spaceBtWItems,),
            Text("South Liana, Miaine 485489, USA",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
      ],
    );
  }
}
