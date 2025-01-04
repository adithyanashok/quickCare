import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final String richText;
  const CustomRichText({
    super.key,
    required this.text,
    required this.richText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(color: Colors.black), // Default text style
        children: [
          TextSpan(
            text: 'Sign in',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 1, 31, 129),
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
