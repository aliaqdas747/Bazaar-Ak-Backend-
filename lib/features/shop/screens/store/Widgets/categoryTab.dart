import 'package:bazaar_ak/common/widgets/layout/grid_layout.dart';
import 'package:bazaar_ak/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';

class RCategoryTab extends StatelessWidget {
  const RCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding:const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          children: [
            ///--- Brands
          const  RBrandShowCase(
              images:[
                RImages.productImage18,
                RImages.productImage19,
                RImages.productImage20,
              ],
            ),
            const SizedBox(
              height: RSizes.spaceBtwItems,
            ),

            ///---Products
            RSectionHeading(
              title: 'You might like',
              showActionButton: true,
              onPressed: () {},
            ),
            const SizedBox(
              height: RSizes.spaceBtwItems,
            ),

             RGridLayout(
                itemCount: 4, itemBuilder: (_, index) =>const RProductCardVertical()),
            const SizedBox(
              height: RSizes.spaceBtwItems,
            ),
          ],
        ),
      ),]
    );
  }
}
