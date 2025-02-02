import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/core/colors.dart';

class BookingCard extends StatelessWidget {
  final bool isDoc;
  const BookingCard({
    super.key,
    this.isDoc = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      elevation: 10,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              "Jan 14, 2025 - 10.00AM",
              style: AppTextStyle.titleStyle.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            Row(
              spacing: 15,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/${isDoc == false ? "doc1.png" : "portrait.jpg"}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. John Doe",
                      style: AppTextStyle.titleStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    isDoc == false
                        ? Text(
                            "Dentist",
                            style: AppTextStyle.titleStyle.copyWith(
                              fontSize: 14,
                              color: AppColors.grey600,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        : SizedBox(),
                    Row(
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
                  ],
                )
              ],
            ),
            Divider(),
            isDoc == false
                ? Column(
                    spacing: 10,
                    children: [
                      CustomRoundedButton(
                        onTap: () {},
                        name: "Reschedule",
                        height: 44,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomRoundedButton(
                        onTap: () {},
                        name: "Cancel",
                        height: 44,
                        textColor: AppColors.midblue,
                        buttonColor: AppColors.grey200,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  )
                : Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: CustomRoundedButton(
                          onTap: () {},
                          name: "Completed",
                          height: 44,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: CustomRoundedButton(
                          onTap: () {},
                          name: "Cancelled",
                          height: 44,
                          textColor: Colors.white,
                          buttonColor: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
