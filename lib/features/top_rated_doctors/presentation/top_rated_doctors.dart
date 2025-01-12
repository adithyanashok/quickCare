import 'package:flutter/material.dart';
import 'package:quick_care/common/widgets/doctor_card.dart';
import 'package:quick_care/common/widgets/section_title.dart';

class TopRatedDoctors extends StatelessWidget {
  const TopRatedDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Top Rated Doctors",
          subtitle: "see all",
        ),
        SizedBox(
          height: 320,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return DoctorCard(
                image: "assets/images/doc1.png",
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
