import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';

class RCircularImage extends StatelessWidget {
  const RCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
      this.width= 56,
      this.height = 56,
    this.padding = RSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:   EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color:  backgroundColor ??  (RHelperFunctions.isDarkMode(context) ? RColors.black : RColors.white),),

      child: Image(
        fit: fit,
        image:  isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor
      ),
    );
  }
}
