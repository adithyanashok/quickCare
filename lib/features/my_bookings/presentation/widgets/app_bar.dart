import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'My Bookings',
        style: AppTextStyle.titleStyle,
      ),
      bottom: TabBar(
        controller: tabController,
        labelStyle: TextStyle(
          color: AppColors.midblue,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.grey400,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        indicatorColor: AppColors.midblue,
        tabs: const <Widget>[
          Tab(
            text: "Upcoming",
          ),
          Tab(
            text: "Completed",
          ),
          Tab(
            text: "Cancelled",
          ),
        ],
      ),
    );
  }
}
