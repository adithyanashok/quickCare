import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class BookingOverviewLabel extends StatelessWidget {
  final String text;
  final Color color;
  const BookingOverviewLabel({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Container(
          width: 8,
          height: 8,
          color: color,
        ),
        Text(
          text,
          style: AppTextStyle.descriptionStyle.copyWith(fontSize: 10),
        )
      ],
    );
  }
}
