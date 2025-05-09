import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (event, response) {
              activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sections: [
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 0 ? 60 : 50,
              value: 40,
              color: const Color(0xff208BC7),
            ),
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 1 ? 60 : 50,
              value: 25,
              color: const Color(0xff4DB7F2),
            ),
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 2 ? 60 : 50,
              value: 20,
              color: const Color(0xff064060),
            ),
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 3 ? 60 : 50,
              value: 22,
              color: const Color(0xffE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}
