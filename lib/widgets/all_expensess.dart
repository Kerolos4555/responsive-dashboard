import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/expensess_items_generator.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          ExpensessItemsGenerator(),
        ],
      ),
    );
  }
}
