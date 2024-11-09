import 'package:bazaar_ak/common/widgets/icons/r_circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class RProductQuantityAddRemove extends StatelessWidget {
  const RProductQuantityAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: RSizes.md,
          color: RHelperFunctions.isDarkMode(context)
              ? RColors.white
              : RColors.black,
          background: RHelperFunctions.isDarkMode(context)
              ? RColors.darkGrey
              : RColors.light,
        ),
        SizedBox(
          width: RSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: RSizes.spaceBtwItems,
        ),
        RCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: RSizes.md,
          color: RHelperFunctions.isDarkMode(context)
              ? RColors.white
              : RColors.black,
          background: RColors.primaryColor,
        ),
      ],
    );
  }
}
