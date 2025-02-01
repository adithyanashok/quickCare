import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/doctor_card.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/core/docinfo.dart';
import 'package:quick_care/features/doctor_details/presentation/widgets/docinfo_widget.dart';
import 'package:quick_care/features/doctor_details/presentation/widgets/expandable_text.dart';
import 'package:quick_care/features/doctor_details/presentation/widgets/review_section.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Doctor details",
          style: AppTextStyle.titleStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(5),
              children: [
                DocCardHorizontal(
                  showFavandRatings: false,
                ),
                SizedBox(height: 22),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      4,
                      (index) {
                        final info = docInfoList[index];
                        return DocInfoWidget(
                          icon: info.icon,
                          data: info.data,
                          label: info.label,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About me",
                        style: AppTextStyle.titleStyle,
                      ),
                      ExpandableText(
                        text:
                            'Dr. David Patel, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Working time",
                        style: AppTextStyle.titleStyle,
                      ),
                      Text(
                        "Monday-Friday, 08.00 AM - 04.00 AM",
                        style: AppTextStyle.descriptionStyle.copyWith(
                          fontSize: 13,
                          color: AppColors.grey600,
                        ),
                      ),
                    ],
                  ),
                ),
                ReviewSection(),
              ],
            ),
          ),
          BottomButton(
            name: "Book Appointment",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
