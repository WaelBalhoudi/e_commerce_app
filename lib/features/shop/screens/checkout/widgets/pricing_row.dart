import 'package:flutter/material.dart';

class PricingRow extends StatelessWidget {
  const PricingRow({
    super.key, required this.title, required this.price,
  });
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.bodyMedium,),
        Text("\$$price ",style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
