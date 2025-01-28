import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/section_title.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/features/doctor_details/presentation/widgets/expandable_text.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: "Reviews", subtitle: 'see all'),
          Column(
            spacing: 10,
            children: [
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/doc2.png'),
                  ),
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emily Anderson',
                        style: AppTextStyle.titleStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '5.0',
                            style: AppTextStyle.descriptionStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.grey600,
                            ),
                          ),
                          AnimatedRatingStars(
                            onChanged: (value) {},
                            filledColor: Colors.yellow,
                            filledIcon: Icons.star_rate_rounded,
                            readOnly: true,
                            displayRatingValue: true,
                            initialRating: 5,
                            customFilledIcon: Icons.star_rate_rounded,
                            customHalfFilledIcon: Icons.star_half_rounded,
                            customEmptyIcon: Icons.star_outline_rounded,
                            starSize: 12,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              ExpandableText(
                  text:
                      "Dr. Patel is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking exceptional cardiac care.")
            ],
          )
        ],
      ),
    );
  }
}
