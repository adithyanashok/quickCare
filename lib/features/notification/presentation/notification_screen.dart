import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/features/notification/presentation/widget/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: AppTextStyle.titleStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
        ],
      ),
    );
  }
}
