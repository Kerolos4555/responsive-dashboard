import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expensess_item_model.dart';
import 'package:responsive_dashboard/widgets/active_expensess_item.dart';
import 'package:responsive_dashboard/widgets/inactive_expensess_item.dart';

class ExpensessItem extends StatelessWidget {
  final ExpensessItemModel itemModel;
  final bool isSelected;
  const ExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensessItem(itemModel: itemModel)
        : InactiveExpensessItem(itemModel: itemModel);
  }
}
