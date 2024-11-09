
import 'package:bazaar_ak/features/authentication/screens/password_configration/reset_password.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(
              RText.forgetPasswordTile,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: RSizes.spaceBtwItems,
            ),
            Text(
              RText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: RSizes.spaceBtwItemsSections * 2,
            ),

            ///Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: RText.email,
                  prefixIcon: Icon(Iconsax.direct_right)),

            ),
            const SizedBox(height: RSizes.spaceBtwItemsSections,),
            
            
            /// Submit Button
               SizedBox(
                   width: double.infinity,
                   child: ElevatedButton(onPressed: ()=> Get.off(()=> const ResetPassword() ), child:const Text(RText.submit)))
          ],
        ),
      ),
    );
  }
}
