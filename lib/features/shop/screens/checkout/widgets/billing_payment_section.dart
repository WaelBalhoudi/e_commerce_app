import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark=THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: ()=>{},
        ),
        SizedBox(height: TSizes.spaceBtWItems/2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark? TColors.light:Colors.white,
              padding: EdgeInsets.all(TSizes.padding_small),
              child: Image(image: AssetImage(TImages.paypal),fit: BoxFit.contain,),
            ),
            SizedBox(width: TSizes.spaceBtWItems/2,),
            Text("PayPal",style: Theme.of(context).textTheme.bodyLarge,)

          ],
        )

      ],
    );
  }
}
