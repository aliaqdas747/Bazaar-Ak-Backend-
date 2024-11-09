import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/common/widgets/product/ratings/rating_indicator.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/image_strings.dart';

class UserReviewCards extends StatelessWidget {
  const UserReviewCards({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(RImages.user),
            
                ),
                SizedBox(width: RSizes.spaceBtwItems,),
                Text('Al bastie',style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            
          ],
        ),
        SizedBox(width: RSizes.spaceBtwItems,),
        
        ///Review
        Row(
          children: [
        const  RRatingBarIndicator(rating: 4.2),
            SizedBox(width: RSizes.spaceBtwItems,),
            Text('01 Nov, 2023',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwItems,),
        ReadMoreText(
            trimLines: 2,
            moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: RColors.primaryColor),
            lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: RColors.primaryColor),
            trimMode: TrimMode.Line,
            '"These shoes exceeded my expectations! The design is stylish and versatile, perfect for both casual outings and more dressed-up occasions. They’re incredibly comfortable, even after wearing them all day, thanks to the cushioned insole and supportive fit. The quality feels premium, with durable materials that seem built to last. I love how lightweight they are too—makes walking around a breeze. Definitely recommend these shoes for anyone looking for both comfort and style!"'),

        SizedBox(height: RSizes.spaceBtwItems,),
        Rroundedcontainer(
          backgroundColor: dark ? RColors.darkGrey : RColors.grey,
          child: Padding(padding: EdgeInsets.all(RSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bazar.ak',style: Theme.of(context).textTheme.titleMedium,),
                  Text('09 Nov , 2023',style: Theme.of(context).textTheme.bodyMedium,),

                ],
              ),
              ReadMoreText(
                  trimLines: 2,
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: RColors.primaryColor),
                  lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: RColors.primaryColor),
                  trimMode: TrimMode.Line,
                  '"These shoes exceeded my expectations! The design is stylish and versatile, perfect for both casual outings and more dressed-up occasions. They’re incredibly comfortable, even after wearing them all day, thanks to the cushioned insole and supportive fit. The quality feels premium, with durable materials that seem built to last. I love how lightweight they are too—makes walking around a breeze. Definitely recommend these shoes for anyone looking for both comfort and style!"'),
            ],
          ),
          ),
        ),
        SizedBox(height: RSizes.spaceBtwItemsSections,),


      ],
    );
  }
}
