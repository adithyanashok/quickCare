import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/home_screen/home_screens.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/features/my_bookings/presentation/screens/my_bookings.dart';
import 'package:quick_care/features/profile/presentation/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List screens = [
    HomeScreens(),
    HomeScreens(),
    MyBookings(),
    ProfileScreen(),
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
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_rounded),
              label: "Map",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "Bookings",
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
