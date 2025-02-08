import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/features/statistics/presentation/booking_overview.dart';
import 'package:quick_care/features/statistics/presentation/patients_overview.dart';
import 'package:quick_care/features/statistics/presentation/revanue_overview.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Statistics",
          style: AppTextStyle.titleStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          BookingOverview(),
          SizedBox(height: 15),
          RevanueOverview(),
          SizedBox(height: 15),
          PatientsOverview(),
        ],
      ),
    );
  }
}
