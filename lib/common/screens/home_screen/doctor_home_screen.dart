import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/doc1.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: AppTextStyle.descriptionStyle,
                ),
                Text(
                  "Don Joe!",
                  style: AppTextStyle.titleStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
