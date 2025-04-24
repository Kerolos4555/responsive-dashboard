import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width >= SizeConfig.desktop &&
        MediaQuery.sizeOf(context).width < 1750) {
      return const Expanded(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: 16,
            right: 16,
            left: 16,
            top: 26,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: DetailedIncomeChart(),
          ),
        ),
      );
    } else {
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          Expanded(
            flex: 2,
            child: IncomeDetails(),
          ),
        ],
      );
    }
  }
}
