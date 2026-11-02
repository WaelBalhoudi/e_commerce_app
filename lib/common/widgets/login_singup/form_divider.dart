import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark? TColors.light:TColors.dark,thickness: 0.5,indent: 60,endIndent: 5)),
        Text("Or SignIn with",style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark? TColors.light:TColors.dark,thickness: 0.5,indent: 5,endIndent: 60)),
      ],
    );
  }
}