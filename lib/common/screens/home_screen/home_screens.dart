import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/home_screen/widgets/app_bar.dart';
import 'package:quick_care/common/screens/home_screen/widgets/banner.dart';
import 'package:quick_care/common/screens/home_screen/widgets/category_section.dart';
import 'package:quick_care/common/widgets/section_title.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/features/notification/presentation/notification_screen.dart';
import 'package:quick_care/features/top_rated_doctors/presentation/top_rated_doctors.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.notifications_active_outlined,
              color: AppColors.grey600,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 16,
            children: [
              BannerWidget(),
              SectionTitle(
                title: "Categories",
                subtitle: "",
              ),
              CategorySection(),
              SectionTitle(
                title: "Top Rated Doctors",
                subtitle: "see all",
              ),
              TopRatedDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
