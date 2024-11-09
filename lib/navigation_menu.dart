import 'package:bazaar_ak/features/shop/screens/home/home.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/WishList/wishlist.dart';
import 'features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
          ()=>  NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=> controller.selectedIndex.value = index,
            backgroundColor: darkMode ? RColors.black: Colors.white,
            indicatorColor: darkMode ? RColors.white.withOpacity(0.1): RColors.black.withOpacity(0.1),

            destinations:const  [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),

        ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value])
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavoriteScreen(),
    const SettingsScreen()

  ];


}