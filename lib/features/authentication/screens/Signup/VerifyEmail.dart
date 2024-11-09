import 'package:bazaar_ak/features/authentication/screens/login/login.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/constants/text_strings.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/success_screen/succes_screen.dart';

class VerifyemailScreen extends StatelessWidget {
  const VerifyemailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
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
                RText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              Text(
                'aliaqdas747@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              Text(
                RText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              ///Buttons
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccesScreen(
                          image: RImages.staticSuccessIllustration,
                          title: RText.yourAccountCreatedTitle,
                          subTitle: RText.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(RText.tContinue)),
              ),
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(RText.resendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
