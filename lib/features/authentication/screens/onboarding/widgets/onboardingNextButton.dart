import 'package:flutter/material.dart';
import 'package:bazaar_ak/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/device/device_utils.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: RSizes.defaultSpace,
        bottom: RDeviceUtils.getBottomNavigationBarHeight(),

        child:   ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: RColors.primaryColor
            ),
            onPressed: () => OnBoardingController.instance.nextPage(), child: const Icon(Icons.arrow_forward_ios_rounded)));
  }
}
