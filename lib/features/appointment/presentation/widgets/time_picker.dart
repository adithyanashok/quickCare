import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/core/time.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({
    super.key,
  });

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  String? selectedTime;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: GridView.builder(
        itemCount: timeList.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2.4,
        ),
        itemBuilder: (context, index) {
          final time = timeList[index];
          return InkWell(
            onTap: () {
              setState(() {
                selectedTime = time.time;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selectedTime == time.time
                    ? AppColors.midblue
                    : AppColors.grey200,
              ),
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  time.time,
                  style: AppTextStyle.descriptionStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: selectedTime == time.time
                        ? Colors.white
                        : AppColors.grey600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
