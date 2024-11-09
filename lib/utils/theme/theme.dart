import 'package:flutter/material.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/appbar_theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/bottom_sheet_theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/checkbox_Theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/chip_Theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/elevated_button_theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/outlined_button_theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/text_Theme.dart';
import 'package:bazaar_ak/utils/theme/custom_Theme/text_field_Theme.dart';

class RAppTheme {
  RAppTheme._();

//light theme data
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: const Color(0xFFFF6F00),
       textTheme: RTextTheme.lightTextTheme,
      chipTheme: RChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: RAppBar.lightAppBarTheme,
      checkboxTheme: RCheckboxTheme.lightCheckBoxTheme,
      bottomSheetTheme: RBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: RElevatedButtonTheme.lightElevatedButtonThemeData,
      outlinedButtonTheme: ROutlinedButtonTheme.lightOutlinedButtomTheme,
      inputDecorationTheme: RTextFormFieldTheme.lightInputDecorationTheme);

  ///Dark theme data
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor:const Color(0xFFFF6F00),
       textTheme: RTextTheme.darkTextTheme,
      chipTheme: RChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: RAppBar.darkAppBarTheme,
      checkboxTheme: RCheckboxTheme.darkCheckBoxTheme,
      bottomSheetTheme: RBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: RElevatedButtonTheme.darkElevatedButtonThemeData,
      outlinedButtonTheme: ROutlinedButtonTheme.darkOutlinedButtomTheme,
      inputDecorationTheme: RTextFormFieldTheme.darkInputDecorationTheme);
}
