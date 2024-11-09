import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/brands/brand_card.dart';
import 'package:bazaar_ak/common/widgets/layout/grid_layout.dart';
import 'package:bazaar_ak/common/widgets/product/Sortable/sortable_products.dart';
import 'package:bazaar_ak/common/widgets/texts/section_heading.dart';
import 'package:bazaar_ak/features/shop/screens/brands/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const RAppbar(title: Text('All Brands'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///Heading
          const    RSectionHeading(title: 'Brands',showActionButton: false,),
            const  SizedBox(height: RSizes.spaceBtwItems,),
              ///Brands

              RGridLayout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (context,index)=> RBrandCard(showBorder: true,onTap: ()=> Get.to(()=> BrandProducts()),),)
            ],
          ),
        ),
      ),
    );
  }
}
