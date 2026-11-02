import 'package:e_commerce_app/common/widgets/custom_shapes/container/ciruclar_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor=THelperFunction.getColor(text) !=null;
    return ChoiceChip(
      label: isColor? const SizedBox(): Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.textWhite : null),
      avatar: isColor?
      TCircularContainer(
        backgroundColor: THelperFunction.getColor(text)!,
        width: 50,
        height: 50,
      ):null,
      shape:isColor? CircleBorder() : null,
      backgroundColor:isColor ? THelperFunction.getColor(text):null,
      selectedColor: isColor ? THelperFunction.getColor(text):null,
      labelPadding: isColor? const  EdgeInsets.all(0) :null,
      padding:isColor? const  EdgeInsets.all(0) :null,
    );
  }
}



