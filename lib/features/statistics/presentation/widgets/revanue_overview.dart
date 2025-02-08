import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';
import 'package:quick_care/features/statistics/presentation/widgets/statistics_label.dart';

class RevanueOverview extends StatefulWidget {
  const RevanueOverview({super.key});

  @override
  State<StatefulWidget> createState() => RevanueOverviewState();
}

class RevanueOverviewState extends State {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 20,
      shadowColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 24),
          Text(
            "REVANUE OVERVIEW",
            style: AppTextStyle.descriptionStyle.copyWith(fontSize: 15),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              BookingOverviewLabel(
                text: "VIDEO CALL",
                color: AppColors.contentColorYellow,
              ),
              BookingOverviewLabel(
                text: "APPOINTMENTS",
                color: AppColors.contentColorBlue,
              ),
            ],
          ),
          AspectRatio(
            aspectRatio: 1.3,
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 115.0 : 105.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.contentColorBlue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.contentColorYellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
          );

        default:
          throw Exception('Oh no');
      }
    });
  }
}
