import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/common/widgets/icons/r_circular_icon.dart';
import 'package:bazaar_ak/common/widgets/images/r_rounded_image.dart';
import 'package:bazaar_ak/common/widgets/texts/product_price_text.dart';
import 'package:bazaar_ak/common/widgets/texts/product_title_text.dart';
import 'package:bazaar_ak/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';


class product_card_horizontal extends StatelessWidget {
  const product_card_horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return  Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(

    borderRadius: BorderRadius.circular(RSizes.productImageRadius),
    color: dark ? RColors.darkGrey : RColors.softGrey,
    ),
      child: Row(
        children: [
          ///Thumbnail
          Rroundedcontainer(
            height: 120,
            padding: EdgeInsets.all(RSizes.sm),
            backgroundColor: dark ? RColors.dark : RColors.light,
            child: Stack(
              ///--- Thumbnail Image 
              children: [
                SizedBox(

                    child: RRoundedImage(imageUrl: RImages.productImage19,applyImageRadius: true,),height: 120,width: 120,),
                ///--Sale Tag
                Positioned(
                  top: 12,
                  left: 5,
                  child: Rroundedcontainer(
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
                ),

                ///-- Favorite icon Button
                Positioned(
                    top: 1,
                    right: 1,
                    child: RCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red.shade700,
                      background: Colors.transparent,
                    ))
              ],
            ),
          ),
          
          ///Detail
          SizedBox(
            width: 172  ,
            child: Padding(

              padding: const EdgeInsets.only(top: RSizes.sm,left: RSizes.sm),
              child: Column(
                children: [
                const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      RProductTitleText(title: 'Green Nike Half Sleeve Shirt',smallSizes: true,),
                      SizedBox(height: RSizes.spaceBtwItems / 2,),
                      RBrandTitleWithVerificationIcon(title: 'Nike')
                    ],
                  ),
                  Spacer(),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const  Flexible(child: RProductPriceText(price: '234')),

                      ///Add To Cart
                      Container(
                        decoration: const BoxDecoration(
                            color: RColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(RSizes.cardRadiusMd),
                              bottomRight: Radius.circular(RSizes.productImageRadius),
                            )),
                        child: const SizedBox(
                            width: RSizes.iconLg * 1.2,
                            height: RSizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: RColors.white,
                                ))),
                      )

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
