import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class RCircularIcon extends StatelessWidget {
  ///A custom  Circular Icon widget  with a background color ,
  ///Prperties are [width],[height], & [background],
  ///Icons [size] [color] & [onPressed]
  const RCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size= RSizes.lg,
    required this.icon,
    this.color,
    this.background,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? background;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(

        color:  background != null
            ? background!
            : RHelperFunctions.isDarkMode(context)
        ?RColors.black.withOpacity(0.9)
        : RColors.white.withOpacity(0.9),

        borderRadius: BorderRadius.circular(100),


      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
