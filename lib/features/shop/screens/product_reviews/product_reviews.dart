import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/product/ratings/rating_indicator.dart';

import 'package:bazaar_ak/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

import 'Widgets/rating_progress_indicator.dart';
import 'Widgets/user_review_cards.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: RAppbar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const   Text(
                "Let others know what you think! Share your honest review and help guide future shoppers."),
         const   SizedBox(
              height: RSizes.defaultSpace,
            ),

            ///OverAll Product Rating
          const  ROverallProductRating(),

         const   RRatingBarIndicator(rating: 4.5,),
            Text('12,334',style: Theme.of(context).textTheme.bodyMedium,),
       const     SizedBox(height: RSizes.spaceBtwItemsSections,),


            ///User Review List
            UserReviewCards(),
            UserReviewCards(),
            UserReviewCards(),
            UserReviewCards(),
            UserReviewCards(),

          ],
        ),
      ),
    );
  }
}

