import 'package:bazaar_ak/common/widgets/login_signup/form_divider.dart';
import 'package:bazaar_ak/common/widgets/login_signup/social_button.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/constants/text_strings.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/SignUpForm.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///Title
              Text(
                RText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),

              ///Form
              RSignUpForm(dark: dark),
              const SizedBox(height: RSizes.spaceBtwItemsSections),
              RFormDivider(
                  dark: true, dividerText: RText.orSignInWith.capitalize!),
              const SizedBox(height: RSizes.spaceBtwItemsSections),
              const RSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
