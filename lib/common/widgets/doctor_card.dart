import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  const DoctorCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        width: 280,
        padding: EdgeInsets.all(10),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(image),
            ),
            Text(
              "John Doe",
              style: AppTextStyle.titleStyle.copyWith(
                color: const Color.fromARGB(255, 66, 66, 66),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
                Text(
                  "123 Oak Street, CA 98765",
                  style: AppTextStyle.descriptionStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "5.0",
                  style: AppTextStyle.descriptionStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                AnimatedRatingStars(
                  readOnly: true,
                  onChanged: (value) {},
                  customFilledIcon: Icons.star_rate_rounded,
                  customHalfFilledIcon: Icons.star_rate_rounded,
                  customEmptyIcon: Icons.star_border_rounded,
                  filledColor: Colors.yellow,
                  starSize: 15,
                  maxRating: 5,
                  initialRating: 5,
                ),
                Text(
                  "(55 reviews)",
                  style: AppTextStyle.descriptionStyle.copyWith(),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.route_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(
                  "2.5 km/40min",
                  style: AppTextStyle.descriptionStyle.copyWith(fontSize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
