import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        spacing: 10,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green.withOpacity(0.4),
            radius: 35,
            child: Icon(
              Icons.done,
              size: 30,
              color: Colors.green[800],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Appoinment Success",
                      style: AppTextStyle.titleStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      "1h",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.descriptionStyle.copyWith(
                        color: AppColors.grey600,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Text(
                  "You have successfully booked your appointment with Dr. Emily Walker.",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.descriptionStyle.copyWith(
                    color: AppColors.grey600,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
