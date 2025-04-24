import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/destop_layout.dart';
import 'package:responsive_dashboard/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/layouts/tablet_layout.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_builder.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: drawerKey,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xffFAFAFA),
                leading: IconButton(
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
            : null,
        backgroundColor: const Color(0xffF7F9FA),
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? const CustomDrawer()
            : null,
        body: AdaptiveLayoutBuilder(
          mobile: (context) => const MobileLayout(),
          tablet: (context) => const TabletLayout(),
          disktop: (context) => const DestopLayout(),
        ),
      ),
    );
  }
}
