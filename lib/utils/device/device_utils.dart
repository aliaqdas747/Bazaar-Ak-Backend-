import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RDeviceUtils {

  /// Hides the keyboard by requesting focus on a new FocusNode.
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// Sets the status bar color to the provided color.
  static Future<void> setStatusBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color)
    );
  }

  /// Checks if the current orientation is landscape.
  static bool isLandscapeOrientation(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.landscape;
  }

  /// Checks if the current orientation is portrait.
  static bool isPortraitOrientation(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait;
  }

  /// Sets the app to full screen mode or not.
  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  /// Returns the width of the screen.
  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  /// Returns the device's pixel ratio.
  static double getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  /// Returns the height of the status bar.
  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  /// Returns the height of the bottom navigation bar.
  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }

  /// Returns the height of the app bar.
  static double getAppBarHeight(){
    return kToolbarHeight;
  }

  /// Returns the height of the keyboard.
  static double getKeyBoardHeight(){
    final viewInsects = MediaQuery.of(Get.context!).viewInsets;
    return viewInsects.bottom;
  }

  /// Checks if the keyboard is currently visible.
  static Future<bool> isKeyboardVisible()async {
    final viewInsects = View.of(Get.context!).viewInsets;
    return viewInsects.bottom > 0;
  }

  /// Checks if the app is running on a physical device.
  static Future<bool> isPhysicalDevice()async{
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  /// Vibrates the device for the specified duration.
  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate);
  }

  /// Sets the preferred orientations for the app.
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations)async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  /// Hides the status bar.
  static void hideStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
  }

  /// Shows the status bar.
  static void showStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays:  SystemUiOverlay.values);
  }

  /// Checks if the device has an active internet connection.
  static Future<bool> hasInternetConnection()async{
    try{
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    }on SocketException catch(_){
      return false;
    }
  }

  /// Checks if the app is running on an iOS device.
  static bool isIOS(){
    return Platform.isIOS;
  }

  /// Checks if the app is running on an Android device.
  static bool isAndroid(){
    return Platform.isAndroid;
  }

  /// Launches a URL in the default browser.
  static void launchUrl(String url) async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw 'Could not launch $url';
    }
  }
}