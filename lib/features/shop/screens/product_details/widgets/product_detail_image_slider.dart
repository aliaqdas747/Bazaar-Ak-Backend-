import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/curved_edgs/curved_edges_widget.dart';
import 'package:bazaar_ak/common/widgets/icons/r_circular_icon.dart';
import 'package:bazaar_ak/common/widgets/images/r_rounded_image.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RProductImageSlider extends StatelessWidget {
  const RProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return RCurvedEdgeWidget(

      child: Container(
        color: dark ? RColors.darkGrey : RColors.light,
        child: Stack(
          children: [

            ///Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(RSizes.productImageRadius * 2),
                child: Center(
                    child: Image(
                        image: AssetImage(RImages.productImage20))),
              ),
            ),

            ///Image Slider
            Positioned(
              right: 0,
              bottom: 30,

              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: RSizes.spaceBtwItems,),
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) =>  RRoundedImage(
                        width: 80,
                        border: Border.all(color: RColors.primaryColor),
                        padding: const EdgeInsets.all(RSizes.sm),
                        backgroundColor: dark ? RColors.dark : RColors.white,
                        imageUrl: RImages.productImage19)),
              ),
            ),

            ///Appbar Icons
            const RAppbar(

              showBackArrow: true,actions: [
              RCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
            ],)

          ],
        ),
      ),
    );
  }
}
