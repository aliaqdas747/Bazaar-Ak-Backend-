import 'package:bazaar_ak/app.dart';
import 'package:bazaar_ak/common/styles/spacing_style.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../navigation_menu.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({super.key, required this.image, required this.title, required this.subTitle, this.onPressed});

  final String image,title,subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
      padding: RSpacingStyle.paddingWidthAppBarHeight * 2,
          child: Column(
            children: [
              ///Images
              Image(
                image: AssetImage(image),
                width: RHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),

              ///Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              ///Buttons
              const SizedBox(
                height: RSizes.spaceBtwItemsSections ,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=> Get.offAll(()=> NavigationMenu()), child: Text('Continue')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
