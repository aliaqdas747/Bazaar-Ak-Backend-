import 'package:bazaar_ak/common/widgets/product/cart/add_remove_btn.dart';
import 'package:bazaar_ak/common/widgets/product/cart/cart_item.dart';
import 'package:bazaar_ak/common/widgets/texts/product_price_text.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RCartItems extends StatelessWidget {
  const RCartItems({super.key,
    this.showAddRemoveButton = false});
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>  SizedBox(
        height:RSizes.spaceBtwItemsSections,
      ),
      itemCount: 6,
      itemBuilder: (_, index) => Column(
        children: [
          ///Cart item
          const    RCartItem(),

         if(showAddRemoveButton) SizedBox(height: RSizes.spaceBtwItems),
          if(showAddRemoveButton) Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ///Extra space
                  const  SizedBox(
                    width: 70,
                  ),

                  ///Add And remove Button]
                  const   RProductQuantityAddRemove(),
                ],
              ),
              ///Product Total Price
              const RProductPriceText(price: '2345')
            ],
          )
        ],
      ),
    );
  }
}
