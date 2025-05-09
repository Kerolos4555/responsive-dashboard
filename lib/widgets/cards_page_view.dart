import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/credit_card.dart';

class CardsPageView extends StatelessWidget {
  final PageController pageController;
  const CardsPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const CreditCard(),
      ),
    );
  }
}
