import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

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
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            "Select Date",
            style: AppTextStyle.titleStyle,
          ),
          Card(
            shadowColor: Colors.white,
            elevation: 10,
            surfaceTintColor: Colors.white,
            child: CalendarDatePicker2(
              displayedMonthDate: DateTime.now(),
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                weekdayLabels: [
                  "Sun",
                  "Mon",
                  "Tue",
                  "Wed",
                  "Thu",
                  "Fri",
                  "Sat",
                ],
                dayBuilder: (
                    {required date,
                    decoration,
                    isDisabled,
                    isSelected,
                    isToday,
                    textStyle}) {
                  final isWeekEnd = date.weekday == DateTime.saturday ||
                      date.weekday == DateTime.sunday;

                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isSelected == true
                          ? AppColors.midblue
                          : isWeekEnd
                              ? Colors.transparent // Custom color for weekends
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '${date.day}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isWeekEnd
                            ? AppColors.grey400
                            : isSelected == true
                                ? Colors.white
                                : AppColors.blue3,
                      ),
                    ),
                  );
                },
                weekdayLabelTextStyle: TextStyle(
                  color: AppColors.blue2,
                  fontWeight: FontWeight.bold,
                ),
                disableModePicker: true,
                disableMonthPicker: true,
                firstDate: DateTime.now(),
                dayBorderRadius: BorderRadius.circular(10),
                daySplashColor: Colors.transparent,
              ),
              value: [DateTime.now()],
              onValueChanged: (dates) => [DateTime()] = dates,
            ),
          ),
        ],
      ),
    );
  }
}
