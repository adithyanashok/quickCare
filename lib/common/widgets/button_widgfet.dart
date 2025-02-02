import 'package:flutter/material.dart';
import 'package:quick_care/core/colors.dart';

class CustomRoundedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color? buttonColor;
  final FontWeight? fontWeight;
  const CustomRoundedButton({
    super.key,
    required this.onTap,
    required this.name,
    this.width,
    this.height = 50,
    this.textColor = Colors.white,
    this.buttonColor = AppColors.midblue,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: fontWeight,
              fontFamily: "Inter",
            ),
          ),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const BottomButton({
    super.key,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.grey200,
      margin: EdgeInsets.all(0),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        child: Center(
          child: CustomRoundedButton(
            onTap: onTap,
            name: name,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
