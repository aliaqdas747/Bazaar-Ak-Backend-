import 'package:bazaar_ak/features/shop/screens/product_reviews/Widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class ROverallProductRating extends StatelessWidget {
  const ROverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              '4.8',
              style: Theme.of(context).textTheme.displayLarge,
            )),
        const  Expanded(
          flex: 7,
          child:Column(
            children:  [
              RRatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              RRatingProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              RRatingProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              RRatingProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              RRatingProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
