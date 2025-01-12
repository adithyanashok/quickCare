import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Location",
          style: AppTextStyle.descriptionStyle,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.location_on_rounded),
            Text(
              "Seattle, USA",
              style: AppTextStyle.titleStyle,
            ),
          ],
        )
      ],
    );
  }
}
