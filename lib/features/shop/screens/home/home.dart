import 'package:bazaar_ak/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:bazaar_ak/common/widgets/layout/grid_layout.dart';
import 'package:bazaar_ak/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:bazaar_ak/common/widgets/texts/section_heading.dart';
import 'package:bazaar_ak/features/shop/screens/all_products/all_products.dart';
import 'package:bazaar_ak/features/shop/screens/home/widgets/homeAppbar.dart';
import 'package:bazaar_ak/features/shop/screens/home/widgets/home_category.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  RHomeAppbar(),
                  SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),

                  ///Searchbar
                  RSearchContainer(
                    text: 'Search for Products',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),

                  ///Categories section
                  Padding(
                    padding: EdgeInsets.only(left: RSizes.defaultSpace),
                    child: Column(
                      children: [
                        RSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: RSizes.spaceBtwItems,
                  ),

                  ///Categories
                  RHomeCategories(),
                  SizedBox(height: RSizes.spaceBtwItemsSections,)

                  ///
                ],
              ),
            ),

            ///Body Section
            Padding(
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  ///Promo Slider ----
                  const RPromoSlider(
                    banners: [
                      RImages.PromoBanar1,
                      RImages.PromoBanar2,
                      RImages.PromoBanar3,
                    ],
                  ),
                  const SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),

                  /// Popular Product Heading
                  const SizedBox(height: RSizes.spaceBtwItems,),
RSectionHeading(title: 'Popular Products',onPressed: () => Get.to(()=> AllProducts()),),
                  ///Popular Product ---
                   RGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const RProductCardVertical(),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
