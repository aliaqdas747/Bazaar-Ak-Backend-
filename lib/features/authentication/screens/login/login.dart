
import 'package:bazaar_ak/common/styles/spacing_style.dart';
import 'package:bazaar_ak/features/authentication/screens/login/widgets/login_form.dart';
import 'package:bazaar_ak/features/authentication/screens/login/widgets/login_header.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/constants/text_strings.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: RSpacingStyle.paddingWidthAppBarHeight,
        child: Column(
          children: [
            //Logo ,Title,SubTitle
            RLoginHeader(dark: dark),

            //Form
            const RLoginForm(),

            ///Divider
            RFormDivider(dark: dark, dividerText:RText.orSignInWith.capitalize!,),
            const SizedBox(
              height: RSizes.spaceBtwItems,
            ),

            ///Footer
            const RSocialButtons()
          ],
        ),
      )),
    );
  }
}




