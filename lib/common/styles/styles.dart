import 'package:flutter/material.dart';
import 'package:quick_care/core/colors.dart';

class AppTextStyle {
  static TextStyle titleStyle = TextStyle(
    color: AppColors.midblue,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    // fontFamily: 'Inter',
  );

  static const TextStyle descriptionStyle = TextStyle(
    color: Color(0xFF374151),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );
}
