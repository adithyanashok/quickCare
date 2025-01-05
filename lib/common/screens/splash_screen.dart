import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/onboard_screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OnboardScreens(),
          ),
        );
      },
    );
    return Scaffold(
      backgroundColor: const Color(0XFF111928),
      body: Center(
        child: Text(
          'QuickCare',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
