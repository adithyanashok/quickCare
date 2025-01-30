import 'package:flutter/material.dart';
import 'package:quick_care/features/appointment/presentation/appointment_screen.dart';
import 'package:quick_care/features/doctor_details/presentation/doctor_details_screen.dart';

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
      home: AppointmentScreen(),
    );
  }
}
