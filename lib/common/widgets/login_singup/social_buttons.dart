import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart' ;
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


TSocialButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FooterItem(image: TImages.google,),
      SizedBox(width: TSizes.spaceBtWItems,),
      FooterItem(image: TImages.facebook,),

    ],
  );
}



class FooterItem extends StatelessWidget {
  final String image;
  const FooterItem({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: TColors.grey,),borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: (){

        },

        icon: Image(
            width: TSizes.iconM,
            height: TSizes.iconM,
            image: AssetImage(image)
        ),
      ),
    );
  }
}
