import 'package:bazaar_ak/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:bazaar_ak/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:bazaar_ak/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bazaar_ak/features/authentication/controllers/onboarding/onboarding_controller.dart';
 import 'package:bazaar_ak/utils/constants/text_strings.dart';
import '../../../../../utils/constants/image_strings.dart';
import 'widgets/onboardingNextButton.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scroll Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children:const [
              OnBoardingPage(
                images: RImages.onBoardingImages1,
                title: RText.onBoardingTitle1,
                subtitle: RText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                images: RImages.onBoardingImages2,
                title: RText.onBoardingTitle2,
                subtitle: RText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                images: RImages.onBoardingImages3,
                title: RText.onBoardingTitle3,
                subtitle: RText.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          const onboardingNavigation(),
          
          ///Circular Button
     const  OnBoardingNextButton()
        ],
      ),
    );
  }
}
