import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'brand_card.dart';

class RBrandShowCase extends StatelessWidget {
  const RBrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Rroundedcontainer(
      showBorder: true,
      padding: const EdgeInsets.all(RSizes.md),
      borderColor: RColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: RSizes.spaceBtwItems),
      child: Column(
        children: [
          ///Brand with product count
          const RBrandCard(showBorder: false,),
          ///Brand  Top 3 Product Images
          Row(
            children: images.map((image)=> brandProductImageWidget(image, context)).toList(),
          )
        ],
      ),

    );
  }
  Widget brandProductImageWidget(String image,context){
    return   Expanded(
      child: Rroundedcontainer(
        height: 100,
        backgroundColor: RHelperFunctions.isDarkMode(context) ? RColors.darkGrey : RColors.light,
        margin: const EdgeInsets.only(right: RSizes.sm),
        padding: const EdgeInsets.all(RSizes.sm),
        child: Image(fit: BoxFit.contain, image: AssetImage(image),),
      ),
    );
  }
}
