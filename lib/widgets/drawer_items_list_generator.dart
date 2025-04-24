import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListGenerator extends StatefulWidget {
  const DrawerItemsListGenerator({super.key});

  @override
  State<DrawerItemsListGenerator> createState() =>
      _DrawerItemsListGeneratorState();
}

class _DrawerItemsListGeneratorState extends State<DrawerItemsListGenerator> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            itemModel: items[index],
            isActive: activeIndex == index,
          ),
        );
      },
    );
  }
}
