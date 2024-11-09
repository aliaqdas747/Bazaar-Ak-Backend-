import 'package:flutter/material.dart';
import 'package:bazaar_ak/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/device/device_utils.dart';

class onboardingNavigation extends StatelessWidget {
  const onboardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: RDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: RSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            effect:  const ExpandingDotsEffect(
                activeDotColor: RColors.primaryColor, dotHeight: 6),

            count: 3));
  }
}
