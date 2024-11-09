import 'package:bazaar_ak/common/widgets/chip/choice_Chip.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/common/widgets/texts/product_price_text.dart';
import 'package:bazaar_ak/common/widgets/texts/product_title_text.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product_attribute extends StatelessWidget {
  const product_attribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SizedBox(
          height: RSizes.spaceBtwItems,
        ),

        ///-Selected attribute pricing
        Rroundedcontainer(
          padding: EdgeInsets.all(RSizes.md),
          backgroundColor: dark ? RColors.darkGrey : RColors.grey,
          child: Column(
            ///Title price and Stock Status
            children: [
              Row(
                children: [
                  const RSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: RSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                    const      RProductTitleText(
                            title: 'Price :',
                            smallSizes: true,
                          ),
                         const SizedBox(
                            width: RSizes.spaceBtwItems,
                          ),

                          ///Actual Price
                          Text('\$29',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(
                            width: RSizes.spaceBtwItems,
                          ),

                          ///Sale Price
                       const   RProductPriceText(price: '20')
                        ],
                      ),

                      ///Stock
                      Row(
                        children: [
                          const RProductTitleText(
                            title: 'Stock : ',
                            smallSizes: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation Description
           const   RProductTitleText(
                title:
                    'This is the product description and it can be go upto 4 lines',
                smallSizes: true,
                maxlines: 4,
              )
            ],
          ),
        ),
      const  SizedBox(
          height: RSizes.spaceBtwItems,
        ),

        ///Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  RSectionHeading(title: 'Colors',showActionButton: false,),
           const SizedBox(height: RSizes.spaceBtwItems / 2,),

           Wrap(
             spacing: 8,
             children: [
               RCoiceChip(
                 text: 'Green',
                 selected: true,
                 onSelected: (value){},

               ),
               RCoiceChip(
                 text: 'Orange',
                 selected: false,
                 onSelected: (value){},

               ),
               RCoiceChip(
                 text: 'Red',
                 selected: false,
                 onSelected: (value){},

               ),

             ],
           )


          ],
        ),

        ///Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const    RSectionHeading(title: 'Size',showActionButton: false,),
           const SizedBox(height: RSizes.spaceBtwItems / 2,),
          Wrap(
            spacing: 8,
            children: [
              RCoiceChip(
                text: 'EU 34',
                selected: true,
                onSelected: (value){},

              ),
              RCoiceChip(
                text: 'EU 36',
                selected: false,
                onSelected: (value){},

              ),
              RCoiceChip(
                text: 'EU 38',
                selected: false,
                onSelected: (value){},

              ),

            ],
          )

          ],
        ),

      ],
    );
  }
}
