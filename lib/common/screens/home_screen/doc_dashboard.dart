import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/features/appointment/presentation/widgets/latest_appointments.dart';
import 'package:quick_care/features/statistics/presentation/widgets/profile_statistics.dart';

class DocDashboard extends StatelessWidget {
  const DocDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     spacing: 10,
      //     children: [
      //       CircleAvatar(
      //         radius: 25,
      //         backgroundImage: AssetImage('assets/images/doc1.png'),
      //       ),
      //       Text(
      //         "Welcome back, Don Joe!",
      //         style: AppTextStyle.titleStyle,
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 24),
              child: Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/doc1.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Joe!",
                        style: AppTextStyle.titleStyle.copyWith(fontSize: 25),
                      ),
                      Text(
                        "Have a good day at work!",
                        style: AppTextStyle.descriptionStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // height: 0,
              padding: EdgeInsets.all(12),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "DASHBOARD",
                    style: AppTextStyle.descriptionStyle.copyWith(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  ProfileStatistics(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 410,
                child: LatestAppointments(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
