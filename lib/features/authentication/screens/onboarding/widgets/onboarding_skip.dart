import 'package:flutter/material.dart';
import 'package:bazaar_ak/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';

import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/device/device_utils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: RDeviceUtils.getAppBarHeight(),
        right: RSizes.defaultSpace,
        child: TextButton(

            onPressed: ()=> OnBoardingController.instance.skipPage(), child: const Text('Skip',style: TextStyle(fontWeight: FontWeight.w600,color: RColors.primaryColor,fontSize: 20),)));
  }
}