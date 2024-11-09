import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class RCopounCode extends StatelessWidget {
  const RCopounCode({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Rroundedcontainer(
      showBorder: true,
      backgroundColor: dark ? RColors.dark : RColors.white,
      padding:const EdgeInsets.only(
          top: RSizes.sm,
          bottom: RSizes.sm,
          right: RSizes.sm,
          left: RSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration:const InputDecoration(
                  hintText: 'Have a Promo code? Enter here',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),

          ///Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark ? RColors.white.withOpacity(0.5) : RColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))
                  ),
                  onPressed: () {}, child: Text('Apply')))
        ],
      ),
    );
  }
}
