import 'package:bazaar_ak/common/styles/shadow.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/common/widgets/icons/r_circular_icon.dart';
import 'package:bazaar_ak/common/widgets/images/r_rounded_image.dart';
import 'package:bazaar_ak/common/widgets/texts/product_price_text.dart';
import 'package:bazaar_ak/common/widgets/texts/product_title_text.dart';
import 'package:bazaar_ak/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:bazaar_ak/features/shop/screens/product_details/product_detail.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    ///
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [RShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(RSizes.productImageRadius),
          color: dark ? RColors.darkGrey : RColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail , Wishlist Button , Discount Tag
            Rroundedcontainer(
              height: 180,
              padding: const EdgeInsets.all(RSizes.sm),
              backgroundColor: dark ? RColors.dark : RColors.light,
              child: Stack(
                children: [
                  ///Thumb nail Image
                  const RRoundedImage(
                    imageUrl: RImages.productImage1,
                    applyImageRadius: true,
                  ),

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

            const SizedBox(
              height: RSizes.spaceBtwItems / 2,
            ),

            ///--- Details
            const Padding(
              padding: EdgeInsets.only(left: RSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RProductTitleText(
                    title: 'Nike Air Jordan',
                    smallSizes: true,
                  ),
                  SizedBox(
                    height: RSizes.spaceBtwItems / 2,
                  ),
                  RBrandTitleWithVerificationIcon(title: 'Nike',),

                  ///Price Row
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price--
                const Padding(
                  padding: EdgeInsets.only(left: RSizes.sm),
                  child: RProductPriceText(
                    price: '35.0',
                    isLarge: true,
                  ),
                ),
                ///Add to cart
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
    );
  }
}

