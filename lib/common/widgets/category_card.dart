import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String category;
  const CategoryCard({
    super.key,
    required this.image,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          category,
          style: AppTextStyle.descriptionStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
