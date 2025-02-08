import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/home_screen/doc_dashboard.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/features/appointment/presentation/screens/appointments_view_screen.dart';
import 'package:quick_care/features/doctor_details/presentation/doctor_details_screen.dart';
import 'package:quick_care/features/statistics/presentation/screens/statistics_screen.dart';

class DoctorSideScreen extends StatefulWidget {
  const DoctorSideScreen({super.key});

  @override
  State<DoctorSideScreen> createState() => _DoctorSideScreenState();
}

class _DoctorSideScreenState extends State<DoctorSideScreen> {
  final List screens = [
    DocDashboard(),
    AppointmentsViewScreen(
      isDoc: true,
    ),
    StatisticsScreen(),
    DoctorDetailsScreen(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.grey400,
          selectedItemColor: AppColors.midblue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded),
              label: "Map",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
