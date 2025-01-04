import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class Header extends StatelessWidget {
  final String message;
  const Header({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "QuickCare",
          style: AppTextStyle.titleStyle,
        ),
        SizedBox(height: 15),
        Text(
          message,
          style: TextStyle(
            fontSize: 22,
            color: Color(0xFF1C2A3A),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "we are help to you",
          style: AppTextStyle.descriptionStyle,
        ),
      ],
    );
  }
}
