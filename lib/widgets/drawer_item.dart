import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_drawer_item.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel itemModel;
  final bool isActive;
  const DrawerItem(
      {super.key, required this.itemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemModel: itemModel)
        : InactiveDrawerItem(itemModel: itemModel);
  }
}
