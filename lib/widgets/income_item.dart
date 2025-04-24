import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class IncomeItem extends StatelessWidget {
  final IncomeItemModel incomeModel;
  const IncomeItem({
    super.key,
    required this.incomeModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeModel.itemColor,
        ),
      ),
      title: Text(
        incomeModel.title,
        style: AppTextStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeModel.value,
        style: AppTextStyles.styleMedium16(context),
      ),
    );
  }
}
