import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: TSizes.spaceBtWItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'I agree to ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: TColors.primary,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Terms of use',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: TColors.primary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtWItems),
      ],
    );
  }
}
