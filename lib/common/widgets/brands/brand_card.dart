
import 'package:bazaar_ak/common/widgets/images/r_circular_image.dart';
import 'package:bazaar_ak/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/enums.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../custom_shapes/container/RRoundedContainer.dart';

class RBrandCard extends StatelessWidget {
  const RBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Rroundedcontainer(
        padding: const EdgeInsets.all(RSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon ---
            Flexible(
              child: RCircularImage(
                isNetworkImage: false,
                image: RImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                RHelperFunctions.isDarkMode(
                    context)
                    ? RColors.white
                    : RColors.black,
              ),
            ),

            const SizedBox(
              width: RSizes.spaceBtwItems / 2,
            ),

            ///-- Text
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const RBrandTitleWithVerificationIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
