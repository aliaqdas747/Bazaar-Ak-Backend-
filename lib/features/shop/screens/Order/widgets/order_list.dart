import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class ROrdersListItems extends StatelessWidget {
  const ROrdersListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: RSizes.spaceBtwItems,),
      itemBuilder: (_,index) =>  Rroundedcontainer(
        showBorder: true,
        padding:const EdgeInsets.all(RSizes.md),
        backgroundColor: dark ? RColors.dark : RColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row 1
            Row(
              children: [
                //1--- Icon
              const  Icon(Iconsax.ship),
              const  SizedBox(
                  width: RSizes.spaceBtwItems / 2,
                ),

                ///2 - Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: RColors.primaryColor, fontWeightDelta: 1),
                      ),
                      Text(
                        '07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),

                /// - 3
                IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_right_34))
              ],
            ),
            SizedBox(
              height: RSizes.spaceBtwItems,
            ),

            ///Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //1--- Icon
                      Icon(Iconsax.ship),
                      SizedBox(
                        width: RSizes.spaceBtwItems / 2,
                      ),

                      ///2 - Status & Date
                      Expanded(
                        ///-- Status & Date
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#256f2]',
                              style: Theme.of(context).textTheme.labelMedium,
                            )
                          ],
                        ),
                      ),

                      /// - 3
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //1--- Icon
                     const Icon(Iconsax.calendar),
                  const    SizedBox(
                        width: RSizes.spaceBtwItems / 2,
                      ),

                      ///2 - Status & Date
                      Expanded(
                        ///-- Status & Date
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shipped Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '02 fab 2025',
                              style: Theme.of(context).textTheme.labelMedium,
                            )
                          ],
                        ),
                      ),

                      /// - 3
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
