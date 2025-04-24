import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

const List<DrawerItemModel> items = [
  DrawerItemModel(
    title: 'Dashboard',
    image: Assets.dashboard,
  ),
  DrawerItemModel(
    title: 'My Transaction',
    image: Assets.myTransctions,
  ),
  DrawerItemModel(
    title: 'Statistics',
    image: Assets.statistics,
  ),
  DrawerItemModel(
    title: 'Wallet Account',
    image: Assets.walletAccount,
  ),
  DrawerItemModel(
    title: 'My Investments',
    image: Assets.myInvestments,
  ),
];
