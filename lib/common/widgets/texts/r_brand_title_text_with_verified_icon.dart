import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import 'r_brand_title_text.dart';

class RBrandTitleWithVerificationIcon extends StatelessWidget {
  const RBrandTitleWithVerificationIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = RColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: RBrandTitleText(
          title: title,
          color: textColor,
          maxlines: maxlines,
          textAlign: textAlign,
          brandTextSizes: brandTextSize,
        )),
        const SizedBox(
          width: RSizes.xs,
        ),
          Icon(
          Iconsax.verify5,
          color: iconColor,
          size: RSizes.iconMd,
        )
      ],
    );
  }
}
