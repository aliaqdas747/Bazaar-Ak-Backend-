import 'package:bazaar_ak/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class RBrandTitleText extends StatelessWidget {
  const RBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final Color? color;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return  Text(
        title,
    textAlign: textAlign,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      //Check which brandSizes is required and set that style ,
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
     : brandTextSizes == TextSizes.medium
      ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          :brandTextSizes == TextSizes.large
        ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color)


    );
  }
}
