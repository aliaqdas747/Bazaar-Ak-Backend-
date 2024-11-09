import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/icons/r_circular_icon.dart';
import 'package:bazaar_ak/common/widgets/layout/grid_layout.dart';
import 'package:bazaar_ak/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:bazaar_ak/features/shop/screens/home/home.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: RAppbar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          RCircularIcon(icon: Iconsax.add,onPressed: ()=> Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          children: [
            RGridLayout(itemCount: 8, itemBuilder: (_ , index )=> const RProductCardVertical(),)
          ],
        ),
        ),
      ),
    );
  }
}
