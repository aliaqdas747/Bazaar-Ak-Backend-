import 'package:flutter/material.dart';


import '../../../utils/constants/colors.dart';


class RFormDivider extends StatelessWidget {
  const RFormDivider({
    super.key,
    required this.dark, required this.dividerText,
  });
 final String dividerText;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? RColors.darkGrey : RColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? RColors.darkGrey : RColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
