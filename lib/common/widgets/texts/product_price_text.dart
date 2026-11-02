import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  final String price;

  const TProductPriceText({
    super.key,
    required this.price,
    this.currencySing="\$",
    this.maxLines=1,
    this.isLarge=false,
    this.lineThrough=false,
  });

  final String currencySing;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySing+price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style:isLarge
        ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough:null)
          :Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough? TextDecoration.lineThrough:null)
      ,
    );
  }
}
