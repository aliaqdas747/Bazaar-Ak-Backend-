import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/brands/brand_card.dart';
import 'package:bazaar_ak/common/widgets/product/Sortable/sortable_products.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppbar(title: Text('Nike',),showBackArrow: true,),
      body:SingleChildScrollView(
        child:Padding(padding:  EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          children: [
            RBrandCard(showBorder: true),
            SizedBox(height: RSizes.spaceBtwItemsSections,),

            RSortableProducts()
          ],
        ),
        ),
      ) ,
    );
  }
}
