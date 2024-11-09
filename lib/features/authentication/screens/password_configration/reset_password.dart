
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///Images
              Image(
                image: const AssetImage(RImages.deliveredEmail),
                width: RHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),

              ///Title & Subtitle
              Text(
                RText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              Text(
                RText.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              ///Buttons
              const SizedBox(
                height: RSizes.spaceBtwItemsSections*3 ,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed:(){},
                    child: const Text('Done')),
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems ,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed:(){},
                    child: const Text(RText.resendEmail,style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
