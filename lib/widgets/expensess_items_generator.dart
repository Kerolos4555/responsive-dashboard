import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/expensess_items_list.dart';
import 'package:responsive_dashboard/widgets/expensess_item.dart';

class ExpensessItemsGenerator extends StatefulWidget {
  const ExpensessItemsGenerator({super.key});

  @override
  State<ExpensessItemsGenerator> createState() =>
      _ExpensessItemsGeneratorState();
}

class _ExpensessItemsGeneratorState extends State<ExpensessItemsGenerator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            child: ExpensessItem(
              itemModel: expensessItems[0],
              isSelected: index == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            child: ExpensessItem(
              itemModel: expensessItems[1],
              isSelected: index == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            child: ExpensessItem(
              itemModel: expensessItems[2],
              isSelected: index == 2,
            ),
          ),
        ),
      ],
    );
  }
}
