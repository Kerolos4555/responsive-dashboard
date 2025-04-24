import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list_generator.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                UserInfoListTile(
                  userModel: UserModel(
                    image: Assets.avatar3,
                    title: 'Lekan Okeowo',
                    subTitle: 'demo@gmail.com',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          DrawerItemsListGenerator(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                InactiveDrawerItem(
                  itemModel: DrawerItemModel(
                    title: 'Setting systems',
                    image: Assets.settings,
                  ),
                ),
                InactiveDrawerItem(
                  itemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.logout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
