import 'package:bazaar_ak/common/widgets/custom_shapes/container/circular_Container.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class RCoiceChip extends StatelessWidget {
  const RCoiceChip({
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
    final isColor = RHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() :   Text(text),
        selected: selected,
        onSelected: onSelected,
        selectedColor: RColors.primaryColor,
        labelStyle: TextStyle(color: selected ? RColors.white : null),
        avatar: isColor
            ? RCircularContainer(

                width: 50,
                height: 50,
                backgroundColor: RHelperFunctions.getColor(text)!)
            : null,
       labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? RHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
