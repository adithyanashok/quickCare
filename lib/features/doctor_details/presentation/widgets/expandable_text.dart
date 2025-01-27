import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({super.key, required this.text});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    const maxLength = 120;
    final isLongText = widget.text.length > maxLength;

    // Determine the displayed text
    final displayText = isExpanded || !isLongText
        ? widget.text
        : '${widget.text.substring(0, maxLength)}...';

    // Determine the suffix
    final suffix = isLongText
        ? GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? " View Less" : " View More",
              textDirection: TextDirection.rtl,
              style: AppTextStyle.descriptionStyle.copyWith(
                fontSize: 13,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        : null;

    return RichText(
      text: TextSpan(
        text: displayText,
        style: AppTextStyle.descriptionStyle.copyWith(
          fontSize: 13,
          color: AppColors.grey600,
        ),
        children: suffix != null
            ? [WidgetSpan(child: suffix)]
            : null, // Append the "View More" or "View Less" if necessary
      ),
    );
  }
}
