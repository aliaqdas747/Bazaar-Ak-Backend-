import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/common/widgets/images/r_circular_image.dart';
import 'package:bazaar_ak/common/widgets/texts/product_price_text.dart';
import 'package:bazaar_ak/common/widgets/texts/product_title_text.dart';
import 'package:bazaar_ak/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/enums.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class RProductMetaData extends StatelessWidget {
  const RProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price and Sale Price
        Row(
          children: [
            ///Sale Tag
            Rroundedcontainer(
              radius: RSizes.sm,
              backgroundColor: RColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: RSizes.sm, vertical: RSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: RColors.black),
              ),
            ),
            const SizedBox(
              width: RSizes.spaceBtwItems,
            ),

            ///Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: RSizes.spaceBtwItems,
            ),
            const RProductPriceText(price: '150',isLarge: true,)
          ],
        ),
      const  SizedBox(height: RSizes.spaceBtwItems / 1.5,),

        ///Title
    const    RProductTitleText(title: 'Blue Nike Air Shoes'),
     const   SizedBox(height: RSizes.spaceBtwItems / 1.5,),

        ///Stock Status
     Row(
       children: [
         const   RProductTitleText(title: 'Status'),
         const SizedBox(
           width: RSizes.spaceBtwItems,
         ),
         Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),

       ],
     ),
       const   SizedBox(height: RSizes.spaceBtwItems / 1.5,),

        ///Brand
        Row(
          children: [
            RCircularImage(image: RImages.shoeIcon,width: 32,height: 32,overlayColor: dark ? RColors.white : RColors.black,),
         const SizedBox(width: RSizes.spaceBtwItems / 2,),
           const RBrandTitleWithVerificationIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
          ],
        ),

      ],
    );
  }
}
