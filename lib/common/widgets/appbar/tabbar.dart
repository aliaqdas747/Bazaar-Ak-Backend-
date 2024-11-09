import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/device/device_utils.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class RTabBar extends StatelessWidget  implements PreferredSizeWidget{
  const RTabBar({super.key, required this.tabs});
  ///
  /// If you want to add the background color to tabs you have to wrap them in Material Widget.
  /// To do that we need [PreferredSized] Widget and thats why created  custom class
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Material(
      color:  dark ? RColors.black : RColors.white,
      child: TabBar(tabs: tabs,
      isScrollable: true,
        indicatorColor: RColors.primaryColor,
        labelColor: dark ? RColors.white : RColors.primaryColor,
        unselectedLabelColor: RColors.darkGrey,

      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(RDeviceUtils.getAppBarHeight());
}
