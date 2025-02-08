import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class ProfileStatistics extends StatelessWidget {
  const ProfileStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatisticsCard(
            label: "PATIENTS",
            value: "160",
            icon: Icons.groups_rounded,
            color: Colors.blue,
            size: 30,
          ),
          StatisticsCard(
            label: "APPOINTMENTS",
            value: "200",
            icon: Icons.medical_services_rounded,
            color: Colors.green,
          ),
          StatisticsCard(
            label: "REVANUE",
            value: "\$10K",
            icon: Icons.attach_money,
            color: Colors.red,
            size: 24,
          ),
        ],
      ),
    );
  }
}

class StatisticsCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;
  final double? size;
  const StatisticsCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 20,
      shadowColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          spacing: 8,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: color.withOpacity(0.3),
              child: Icon(
                icon,
                color: color,
                size: size,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              label,
              style: AppTextStyle.descriptionStyle,
            ),
            Text(
              value,
              style: AppTextStyle.titleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
