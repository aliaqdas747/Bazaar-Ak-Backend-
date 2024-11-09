
import 'package:bazaar_ak/common/widgets/images/r_rounded_image.dart';
import 'package:bazaar_ak/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../texts/product_title_text.dart';

class RCartItem extends StatelessWidget {
  const RCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Image
        RRoundedImage(
          imageUrl: RImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(RSizes.sm),
          backgroundColor: RHelperFunctions.isDarkMode(context)
              ? RColors.darkGrey
              : RColors.light,
        ),
        SizedBox(
          width: RSizes.spaceBtwItems,
        ),

        ///Title, Price . & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RBrandTitleWithVerificationIcon(title: 'Nike'),
              Flexible(
                  child: RProductTitleText(
                    title: 'Black Sports shoes',
                    maxlines: 1,
                  )),

              ///Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
