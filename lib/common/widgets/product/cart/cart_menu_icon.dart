import 'package:bazaar_ak/features/shop/screens/cart/cart.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class RCartCounterIcon extends StatelessWidget {
  const RCartCounterIcon({
    super.key, required this.onPressed,
    this.IconColor= Colors.white
  });
  final VoidCallback onPressed;
  final Color? IconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(()=> CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: RHelperFunctions.isDarkMode(context) ? IconColor:RColors.dark,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: RColors.black ,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
                  '1',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(
                      color: Colors.white,
                      fontSizeFactor: 0.8),
                )),
          ),
        )
      ],
    );
  }
}
