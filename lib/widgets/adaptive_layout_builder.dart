import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder disktop;

  const AdaptiveLayoutBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.disktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < SizeConfig.tablet) {
          return mobile(context);
        } else if (constrains.maxWidth < SizeConfig.desktop) {
          return tablet(context);
        } else {
          return disktop(context);
        }
      },
    );
  }
}
