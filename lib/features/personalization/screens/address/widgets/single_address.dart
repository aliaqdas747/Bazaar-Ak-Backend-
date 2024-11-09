import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/container/RRoundedContainer.dart';

class RSingleAddress extends StatelessWidget {
  const RSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Rroundedcontainer(
      padding: const EdgeInsets.all(RSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? RColors.primaryColor.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? RColors.darkGrey
              : RColors.grey,
      margin: EdgeInsets.only(bottom: RSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? RColors.light
                      : RColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ali Aqdas',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: RSizes.sm /2,),
              Text('0903134848444',maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: RSizes.sm /2,),
              Text('123332,Azad Kashmir ,District Kotli ,Charhoi sdfeferferferfreferfrferferfe ', softWrap: true,),

            ],
          )
        ],
      ),
    );
  }
}
