import 'package:bazaar_ak/common/widgets/custom_shapes/container/circular_Container.dart';
import 'package:bazaar_ak/common/widgets/icons/r_circular_icon.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RBottomAddToCart extends StatelessWidget {
  const RBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: RSizes.defaultSpace, vertical: RSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? RColors.darkGrey : RColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(RSizes.cardRadiusLg),
            topRight: Radius.circular(RSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RCircularIcon(
                icon: Iconsax.minus,
                background: RColors.black,
                width: 40,
                height: 40,
                color: RColors.white,
              ),
              SizedBox(
                width: RSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: RSizes.spaceBtwItems,
              ),
              RCircularIcon(
                icon: Iconsax.add,
                background: RColors.black,
                width: 40,
                height: 40,
                color: RColors.white,
              ),
            ],
          ),
          ElevatedButton.icon(
            icon: Icon(Iconsax.shopping_cart),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(RSizes.md),
              ),
              label:  Text('Add to Cart'),
               )
        ],
      ),
    );
  }
}
