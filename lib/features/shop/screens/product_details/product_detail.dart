import 'package:bazaar_ak/app.dart';
import 'package:bazaar_ak/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:bazaar_ak/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:bazaar_ak/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:bazaar_ak/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:readmore/readmore.dart';

import '../../../../utils/constants/colors.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    //  final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: RBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            const  RProductImageSlider(),

            ///Product Detail
            Padding(
              padding:const EdgeInsets.only(
                  right: RSizes.defaultSpace,
                  left: RSizes.defaultSpace,
                  bottom: RSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating And Share
                const  RRatingAndShare(),

                  ///Price ,Title , Stock , And Brand ,
                  const   RProductMetaData(),

                  ///Attribute
                  const    product_attribute(),
                  const    SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),

                  ///CheckOut Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const   SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),

                  ///Description
                  const    RSectionHeading(
                    title: 'Discription',
                    showActionButton: false,
                  ),
                  const     SizedBox(
                    height: RSizes.spaceBtwItems,
                  ),
                  const   ReadMoreText(
                    "Experience unparalleled comfort and style with Nike Air shoes. Featuring advanced cushioning and a sleek, modern design, these shoes offer the perfect blend of performance and fashion. Ideal for sports, daily wear, or casual outings, Nike Air shoes ensure all-day support Step into innovation with every stride.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,

                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color: RColors.primaryColor),
                    lessStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color: RColors.primaryColor),
                  ),

                  ///Review
                  const Divider(),
                  const    SizedBox(
                    height: RSizes.spaceBtwItems,
                  ),
                  RSectionHeading(
                   title: 'Reviews (189)',
                   onPressed: ( )=> Get.to(()=> const ProductReviewsScreen() ),showActionButton: true,),
                   const   SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
