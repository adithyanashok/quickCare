import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

class LatestAppointments extends StatelessWidget {
  const LatestAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 15,
      shadowColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 10,
          children: [
            Text(
              "LATEST APPOINTMENTS",
              style: AppTextStyle.descriptionStyle.copyWith(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    shadowColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        spacing: 10,
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/portrait.jpg",
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "John Doe",
                                      style: AppTextStyle.titleStyle
                                          .copyWith(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 16,
                                      color: AppColors.grey400,
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: AppColors.grey200,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+91 564563564",
                                      style: AppTextStyle.titleStyle.copyWith(
                                        fontSize: 14,
                                        color: AppColors.grey600,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.male,
                                      size: 20,
                                      color: AppColors.grey600,
                                    ),
                                    Text(
                                      "Male",
                                      style: AppTextStyle.descriptionStyle
                                          .copyWith(
                                        color: AppColors.grey600,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Jan 14, 2025 - 10.00AM",
                                  style: AppTextStyle.descriptionStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 5),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
