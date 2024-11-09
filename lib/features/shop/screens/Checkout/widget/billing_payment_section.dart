import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class RBillingPaymentSection extends StatelessWidget {
  const RBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
        ),
        SizedBox(
          height: RSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Rroundedcontainer(
              width: 60,
              height: 60,
              backgroundColor: RHelperFunctions.isDarkMode(context)
                  ? RColors.light
                  : RColors.white,
              padding: EdgeInsets.all(RSizes.sm),
              child: Image(image: AssetImage(RImages.paypal,),fit: BoxFit.contain,),
            ),
            SizedBox(width: RSizes.spaceBtwItems / 2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
