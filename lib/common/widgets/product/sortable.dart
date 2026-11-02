import 'package:e_commerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'product_card/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.star)),
          onChanged: (value){},
          items: ['Name','Higher Price','Lower Price','Sale','Newest','Popularity']
              .map((option)=>DropdownMenuItem(value: option,child: Text(option),))
              .toList(),
        ),
        SizedBox(height: TSizes.spaceBtWSections,),
        TGridLayout(itemCount: 8, itemBuilder: (_,index)=>TProductCardVertical())
      ],
    );
  }
}
