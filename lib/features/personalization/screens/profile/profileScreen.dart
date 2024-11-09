import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/images/r_circular_image.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Widgets/profile_menu.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///Body ---
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const RCircularImage(
                      image: RImages.user,
                      width: 100,
                      height: 100,
                    ),
                    TextButton(
                        onPressed: () {},
                        child:const Text(
                          'Change Profile Picture',
                          style: TextStyle(color: RColors.primaryColor),
                        ))
                  ],
                ),
              ),

              //Details
              const SizedBox(
                height: RSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              const RSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),

              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              RProfileMenu(  onPressed: () {  }, title: 'Name', value: 'ALI AQDAS',),
              RProfileMenu(  onPressed: () {  }, title: 'UserName', value: 'Al Bastie Developers',),

              const   SizedBox(height: RSizes.spaceBtwItems,),
              const Divider(),
              const  SizedBox(height: RSizes.spaceBtwItems,),

              ///Heading Personal Info
            const  RSectionHeading(title: 'Personal Information',showActionButton: false,),
            const  SizedBox(height: RSizes.spaceBtwItems,),

              RProfileMenu(onPressed: (){}, title: 'User ID', value: '65432',icon: Iconsax.copy,),
              RProfileMenu(onPressed: (){}, title: 'E-mail', value: 'aliaqdas747@gmail.com'),
              RProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+9203136033747'),
              RProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              RProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '10 Oct, 1994'),
             const Divider(),
             const SizedBox(height: RSizes.spaceBtwItems,),

              Center(
                child: TextButton(onPressed: (){}, child:const Text('Close Account',style: TextStyle(color: Colors.red),)),
              )




            ],
          ),
        ),
      ),
    );
  }
}
