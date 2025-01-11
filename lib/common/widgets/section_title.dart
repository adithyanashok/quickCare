import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const SectionTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.titleStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: AppTextStyle.descriptionStyle,
        )
      ],
    );
  }
}
