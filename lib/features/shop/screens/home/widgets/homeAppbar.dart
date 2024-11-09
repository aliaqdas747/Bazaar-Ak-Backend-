
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class RHomeAppbar extends StatelessWidget {
  const RHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            RText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: RColors.grey),
          ),
          Text(
            RText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: RColors.white),
          )
        ],
      ),
      actions: [
        RCartCounterIcon(onPressed: () {  },IconColor: RColors.white,)
      ],
    );
  }
}

