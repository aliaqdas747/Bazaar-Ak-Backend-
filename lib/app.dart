import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bazaar_ak/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,

        theme: RAppTheme.lightTheme,
        darkTheme: RAppTheme.darkTheme,
         home: const OnBoardingScreen(),
    );

  }
}
