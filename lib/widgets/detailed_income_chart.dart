import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
              radius: activeIndex == 0 ? 60 : 50,
              title: activeIndex == 0 ? 'Design service' : '40%',
              value: 40,
              color: const Color(0xff208BC7),
              titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
              titleStyle: AppTextStyles.styleMedium16(context).copyWith(
                color: activeIndex == 0 ? null : Colors.white,
              ),
            ),
            PieChartSectionData(
              radius: activeIndex == 1 ? 60 : 50,
              title: activeIndex == 1 ? 'Design Product' : '25%',
              value: 25,
              color: const Color(0xff4DB7F2),
              titlePositionPercentageOffset: activeIndex == 1 ? 1.2 : null,
              titleStyle: AppTextStyles.styleMedium16(context).copyWith(
                color: activeIndex == 1 ? null : Colors.white,
              ),
            ),
            PieChartSectionData(
              radius: activeIndex == 2 ? 60 : 50,
              title: activeIndex == 2 ? 'Product Royalti' : '20%',
              value: 20,
              color: const Color(0xff064060),
              titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
              titleStyle: AppTextStyles.styleMedium16(context).copyWith(
                color: activeIndex == 2 ? null : Colors.white,
              ),
            ),
            PieChartSectionData(
              radius: activeIndex == 3 ? 60 : 50,
              title: activeIndex == 3 ? 'Other' : '22%',
              value: 22,
              color: const Color(0xffE2DECD),
              titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
              titleStyle: AppTextStyles.styleMedium16(context).copyWith(
                color: activeIndex == 3 ? null : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
