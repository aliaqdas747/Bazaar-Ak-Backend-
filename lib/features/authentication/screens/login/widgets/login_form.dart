
import 'package:bazaar_ak/features/authentication/screens/Signup/signup.dart';
import 'package:bazaar_ak/features/authentication/screens/password_configration/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class RLoginForm extends StatelessWidget {
  const RLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: RSizes.spaceBtwItemsSections,
          ),
          child: Column(
            children: [
              //Email
              TextFormField(
                decoration:const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: RText.email

                  ///Continue.........
                ),
              ),
              const SizedBox(
                height: RSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration:const InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined),
                    labelText: RText.password,
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              const  SizedBox(
                height: RSizes.spaceBtwInputFields / 2,
              ),

              ///Remember Me / Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Remeber Me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(
                        RText.rememberMe,
                      ),
                    ],
                  ),

                  //Forget Password
                  TextButton(
                      onPressed: () => Get.to(()=> const ForgetPassword()),
                      child: const Text(RText.forgetPassword,
                          style: TextStyle(color: Color(0xFFFF6F00))))
                ],
              ),
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),

              ///Sign in Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: ()=>Get.to(()=>const  NavigationMenu()) , child: const Text(RText.signIn))),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),

              ///Create Account Button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: ()=> Get.to(()=> const SignupScreen() ),
                      child:const Text(
                        RText.createAccount,
                        style: TextStyle(),
                      ))),

              //Password
            ],
          ),
        ));
  }
}
