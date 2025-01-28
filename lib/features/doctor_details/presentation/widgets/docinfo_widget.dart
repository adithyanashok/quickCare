import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

class DocInfoWidget extends StatelessWidget {
  final IconData icon;
  final String data;
  final String label;
  const DocInfoWidget({
    super.key,
    required this.icon,
    required this.data,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.grey200,
          radius: 25,
          child: Icon(
            icon,
            color: AppColors.midblue,
            size: 26,
          ),
        ),
        SizedBox(height: 5),
        Text(
          data,
          textAlign: TextAlign.center,
          style: AppTextStyle.descriptionStyle.copyWith(
            fontWeight: FontWeight.w800,
            color: AppColors.midblue,
            fontSize: 13,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyle.descriptionStyle,
        )
      ],
    );
  }
}
