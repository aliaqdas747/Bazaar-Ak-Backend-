import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bazaar_ak/app.dart';


import 'firebase_options.dart';


Future<void> main() async {
  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Init Payment Methods
  // Todo: Await Native Splash
  //Todo: Initialize  Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}
