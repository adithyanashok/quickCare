import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Image.asset(
          "assets/images/banner2.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
