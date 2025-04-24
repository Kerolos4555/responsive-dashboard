import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class InactiveDrawerItem extends StatelessWidget {
  final DrawerItemModel itemModel;
  const InactiveDrawerItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          itemModel.title,
          style: AppTextStyles.styleRegular16(context),
        ),
      ),
    );
  }
}
