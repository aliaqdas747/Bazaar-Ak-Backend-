import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:bazaar_ak/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:bazaar_ak/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:bazaar_ak/features/personalization/screens/address/address.dart';
import 'package:bazaar_ak/features/personalization/screens/profile/profileScreen.dart';
import 'package:bazaar_ak/features/shop/screens/Order/order_list.dart';
import 'package:bazaar_ak/features/shop/screens/cart/cart.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/seaction_heading.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header ---////
            RPrimaryHeaderContainer(
                child: Column(
              children: [
                RAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: RColors.white),
                  ),
                ),
                const SizedBox(
                  height: RSizes.spaceBtwItemsSections,
                ),

                ///User Profile Card
                RUserProfileTitle(onPressed: ()=> Get.to(()=>const Profilescreen()),),
                const SizedBox(
                  height: RSizes.spaceBtwItemsSections,
                )
              ],
            )),

            /// ----Body///
            Padding(
              padding:   EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  const RSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Manage your delivery address',
                  onTap: () => Get.to(() =>const UserAddressScreen()),
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'View items in your cart',
                    onTap: ()=> Get.to(() => const CartScreen()),
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: 'Orders',
                    subtitle: 'Track your order history',
                    onTap: ()=> Get.to(()=> const OrderScreen()),
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Manage your bank account details',
                    onTap: () {},
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'View your available coupons',
                    onTap: () {},
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Customize your notification settings',
                    onTap: () {},
                  ),
                  RSettingMenuTitle(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Control your privacy settings',
                    onTap: () {},
                  ),

                  /// -- App Settings
                  const SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),
                  const RSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: RSizes.spaceBtwItems,
                  ),
                  const RSettingMenuTitle(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase'),

                  RSettingMenuTitle(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendations based on location',
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: const Color(0xFFFF6F00),
                        // Bright orange thumb when switch is ON
                        activeTrackColor: const Color(0xFFFFCC80),
                        // Lighter orange track when switch is ON
                        inactiveThumbColor: const Color(0xFFFF6F00),
                        // Same orange thumb when switch is OFF
                        inactiveTrackColor: const Color(0xFFFFE0B2),
                        // Softer, light orange track when switch is OFF
                        hoverColor: const Color(0xFFFF8F00),
                        // Slightly lighter orange when hovered
                        focusColor: const Color(
                            0xFFFF6F00), // Primary orange color for focus consistency
                      )),
                  RSettingMenuTitle(
                      icon: Iconsax.security_user,
                      title: 'Safe Mood',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: const Color(0xFFFF6F00),
                        // Bright orange thumb when switch is ON
                        activeTrackColor: const Color(0xFFFFCC80),
                        // Lighter orange track when switch is ON
                        inactiveThumbColor: const Color(0xFFFF6F00),
                        // Same orange thumb when switch is OFF
                        inactiveTrackColor: const Color(0xFFFFE0B2),
                        // Softer, light orange track when switch is OFF
                        hoverColor: const Color(0xFFFF8F00),
                        // Slightly lighter orange when hovered
                        focusColor: const Color(
                            0xFFFF6F00), // Primary orange color for focus consistency
                      )),

                  RSettingMenuTitle(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subtitle: 'Set Image quality to be seen',
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: const Color(0xFFFF6F00),
                        // Bright orange thumb when switch is ON
                        activeTrackColor: const Color(0xFFFFCC80),
                        // Lighter orange track when switch is ON
                        inactiveThumbColor: const Color(0xFFFF6F00),
                        // Same orange thumb when switch is OFF
                        inactiveTrackColor: const Color(0xFFFFE0B2),
                        // Softer, light orange track when switch is OFF
                        hoverColor: const Color(0xFFFF8F00),
                        // Slightly lighter orange when hovered
                        focusColor: const Color(
                            0xFFFF6F00), // Primary orange color for focus consistency
                      )),

                  ///--- Logout button
                  const SizedBox(
                    height: RSizes.spaceBtwItemsSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(
                    height: RSizes.spaceBtwItemsSections * 2.5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
