import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/images/r_rounded_image.dart';
import 'package:bazaar_ak/common/widgets/product/products_cards/product_card_horizontal.dart';
import 'package:bazaar_ak/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppbar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.spaceBtwItems),
          child: Column(
            children: [
              RRoundedImage(
                width: double.infinity,
                imageUrl: RImages.PromoBanar2,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),

              ///Sub Category
              Column(
                children: [
                  ///Heading

                  ///
                  RSectionHeading(title: 'Sports Shirts'),
                  const SizedBox(
                    height: RSizes.spaceBtwItems / 2,
                  ),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => product_card_horizontal(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: RSizes.spaceBtwItems,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
