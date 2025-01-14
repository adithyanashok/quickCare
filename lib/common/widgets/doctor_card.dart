import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

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

class DocCardHorizontal extends StatelessWidget {
  const DocCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.white,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          spacing: 10,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/doc1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Dr. John Doe",
                        style: AppTextStyle.titleStyle.copyWith(fontSize: 18),
                      ),
                      Icon(
                        HugeIcons.strokeRoundedFavourite,
                        color: AppColors.grey400,
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.grey200,
                  ),
                  Text(
                    "Dentist",
                    style: AppTextStyle.titleStyle.copyWith(
                      fontSize: 14,
                      color: AppColors.grey600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20,
                        color: AppColors.grey600,
                      ),
                      Text(
                        "Elite Ortho Clinic, USA",
                        style: AppTextStyle.descriptionStyle.copyWith(
                          color: AppColors.grey600,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  SizedBox(
                    child: Row(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Text(
                              "5",
                              style: AppTextStyle.descriptionStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: AppColors.grey300,
                          width: 1.5,
                          height: 12,
                        ),
                        Text(
                          "1,454 reviews",
                          style: AppTextStyle.descriptionStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
