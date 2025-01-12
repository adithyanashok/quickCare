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
    this.width = double.infinity,
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
              fontSize: 16,
              fontWeight: fontWeight,
              fontFamily: "Inter",
            ),
          ),
        ),
      ),
    );
  }
}
