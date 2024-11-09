import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class RBillingAddressSection extends StatelessWidget {
  const RBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        RSectionHeading(
          title: 'Shipping Address',
          showActionButton: true,
          buttonTitle: 'Change',

          onPressed: (){},
        ),
        Text('Code with Ali ',style: Theme.of(context).textTheme.bodyLarge,),
SizedBox(height: RSizes.spaceBtwItems/2,),
    Row(
      children: [
        Icon(Icons.phone,color: Colors.grey,size: 16,),
        SizedBox(width: RSizes.spaceBtwItems,),
        Text('03136033747',style: Theme.of(context).textTheme.bodyMedium,),

      ],
    ),
        SizedBox(height: RSizes.spaceBtwItems /2 ,),
        Row(
          children: [
            Icon(Icons.location_history,color: Colors.grey,size: 16,),
            SizedBox(width: RSizes.spaceBtwItems,),
            Expanded(child: Text('azad kashmir charhoi,district kotli',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),

          ],
        ),
        SizedBox(height: RSizes.spaceBtwItems /2 ,),

      ],
    );
  }
}
