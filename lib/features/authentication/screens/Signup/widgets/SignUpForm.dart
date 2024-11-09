import 'package:bazaar_ak/features/authentication/screens/Signup/widgets/term&Condition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';
import '../VerifyEmail.dart';
class RSignUpForm extends StatelessWidget {
  const RSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ///First Name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: RText.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(
                  width: RSizes.spaceBtwInputFields,
                ),

                ///Last Name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: RText.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: RSizes.spaceBtwInputFields,
            ),

            ///Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: RText.username,
                prefixIcon: Icon(Iconsax.user),
              ),
            ),

            const SizedBox(
              height: RSizes.spaceBtwInputFields,
            ),

            ///Email Address
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: RText.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(
              height: RSizes.spaceBtwInputFields,
            ),

            ///Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: RText.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(
              height: RSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              obscureText: true,
              expands: false,
              decoration: const InputDecoration(
                  labelText: RText.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),

          const  SizedBox(
              height: RSizes.spaceBtwInputFields,
            ),

            ///Term And conditions CheckBox
            RTermConditions(dark: dark),

           const SizedBox(
              height: RSizes.spaceBtwItemsSections,
            ),

            ///Signup Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: ()=> Get.to(()=>const VerifyemailScreen() ), child: const Text(RText.createAccount)),
            )
          ],
        ));
  }
}

