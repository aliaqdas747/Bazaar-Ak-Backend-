import 'package:flutter/material.dart';

class RProductTitleText extends StatelessWidget {
  const RProductTitleText({
    super.key,
    required  this.title,
     this.smallSizes= false,
     this.maxlines= 2,
    this.textAlign= TextAlign.left,
  });

  final String title;
  final bool smallSizes;
  final int maxlines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSizes ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines:maxlines,
      textAlign:textAlign,
    );
  }
}
