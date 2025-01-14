import 'package:flutter/material.dart';
import 'package:quick_care/core/category.dart';
import 'package:quick_care/core/colors.dart';

class ChoiceChipList extends StatefulWidget {
  const ChoiceChipList({super.key});

  @override
  State<ChoiceChipList> createState() => _ChoiceChipListState();
}

class _ChoiceChipListState extends State<ChoiceChipList> {
  String? selectedValue = "All";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final value = category[index];
          return ChoiceChip(
            showCheckmark: false,
            selectedColor: AppColors.midblue,
            backgroundColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: AppColors.midblue,
                width: 1.7,
              ),
            ),
            label: Text(
              value.category,
              style: TextStyle(
                color: selectedValue == value.category
                    ? Colors.white
                    : AppColors.midblue,
              ),
            ),
            selected: selectedValue == value.category,
            onSelected: (isSelected) {
              setState(() {
                selectedValue = isSelected ? value.category : null;
              });
            },
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: category.length,
      ),
    );
  }
}
