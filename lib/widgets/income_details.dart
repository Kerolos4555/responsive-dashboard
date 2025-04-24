import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/income_items_list.dart';
import 'package:responsive_dashboard/widgets/income_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomeItems
          .map(
            (e) => IncomeItem(
              incomeModel: e,
            ),
          )
          .toList(),
    );
  }
}
