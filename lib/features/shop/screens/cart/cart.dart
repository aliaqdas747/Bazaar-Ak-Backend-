import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/product/cart/cart_item.dart';
import 'package:bazaar_ak/features/shop/screens/Checkout/checkout.dart';
import 'package:bazaar_ak/features/shop/screens/cart/widgets/cart_item.dart';
 import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body:const Padding(
        padding: EdgeInsets.all(RSizes.defaultSpace),

        ///Items in cart
        child:  RCartItems(showAddRemoveButton: true,)
      ),

      ///Checkout Button
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> CheckoutScreen()), child: Text('Checkout \$256434.0')),
      ),
    );
  }
}
