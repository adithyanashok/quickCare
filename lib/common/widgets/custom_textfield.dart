import 'package:flutter/material.dart';

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
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey,
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
