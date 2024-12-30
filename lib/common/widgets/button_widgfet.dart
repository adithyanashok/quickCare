import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  const CustomRoundedButton({
    super.key,
    required this.onTap,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF1C2A3A),
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter",
            ),
          ),
        ),
      ),
    );
  }
}
