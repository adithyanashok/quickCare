import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/home_screen/widgets/app_bar.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/doctor_card.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/core/docinfo.dart';
import 'package:quick_care/features/doctor_details/presentation/widgets/expandable_text.dart';

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
      body: ListView(
        children: [
          DocCardHorizontal(
            showFavandRatings: false,
          ),
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
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 8,
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
          )
        ],
      ),
    );
  }
}

class DocInfoWidget extends StatelessWidget {
  final IconData icon;
  final String data;
  final String label;
  const DocInfoWidget({
    super.key,
    required this.icon,
    required this.data,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.grey200,
          radius: 25,
          child: Icon(
            icon,
            color: AppColors.midblue,
            size: 26,
          ),
        ),
        SizedBox(height: 5),
        Text(
          data,
          textAlign: TextAlign.center,
          style: AppTextStyle.descriptionStyle.copyWith(
            fontWeight: FontWeight.w800,
            color: AppColors.midblue,
            fontSize: 13,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyle.descriptionStyle,
        )
      ],
    );
  }
}
