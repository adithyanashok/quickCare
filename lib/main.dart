import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/onboard_screens.dart';
import 'package:quick_care/common/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickCare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: OnboardScreens(),
    );
  }
}
