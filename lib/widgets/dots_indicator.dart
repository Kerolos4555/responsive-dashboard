import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final int currentPage;
  const DotsIndicator({super.key, required this.currentPage,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(
            isActive: index == currentPage,
          ),
        ),
      ),
    );
  }
}
