import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : Colors.white,
      padding: EdgeInsets.only(
        top: TSizes.padding_small,
        bottom: TSizes.padding_small,
        right: TSizes.padding_small,
        left: TSizes.padding_medium,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have a promo code?",
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? Colors.white.withOpacity(0.5) :TColors.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(.2),
                  side: BorderSide(color: TColors.grey.withOpacity(0.1))
              ),
              child: Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}