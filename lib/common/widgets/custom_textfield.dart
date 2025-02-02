import 'package:flutter/material.dart';
import 'package:quick_care/core/colors.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  final IconData icon;
  const CustomTextField({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // fillColor: Colors.grey,
        fillColor: AppColors.grey200,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        hintText: name,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}

class GenderDropdown extends StatelessWidget {
  final String hintText;
  final ValueChanged<String?> onChanged;
  final List<String> items;

  const GenderDropdown({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        fillColor: AppColors.grey200,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      hint: Text(
        hintText,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
