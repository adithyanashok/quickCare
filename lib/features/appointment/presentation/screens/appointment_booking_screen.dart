import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/features/appointment/presentation/widgets/date_picker.dart';
import 'package:quick_care/features/appointment/presentation/widgets/time_picker.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Book Appointment",
          style: AppTextStyle.titleStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(22),
              children: [
                Text("Select Date", style: AppTextStyle.titleStyle),
                DatePickerWidget(),
                SizedBox(height: 30),
                Text("Select Hour", style: AppTextStyle.titleStyle),
                TimePickerWidget()
              ],
            ),
          ),
          BottomButton(
            name: "Confirm",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
