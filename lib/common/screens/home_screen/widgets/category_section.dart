import 'package:flutter/material.dart';
import 'package:quick_care/common/widgets/category_card.dart';
import 'package:quick_care/core/category.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 230,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              childAspectRatio: 0.7,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final cat = categories[index];
              return CategoryCard(
                category: cat.category,
                image: cat.image,
              );
            },
          ),
        ),
      ],
    );
  }
}
