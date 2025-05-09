import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class ExpensessAndQuickInvoiceSection extends StatelessWidget {
  const ExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensess(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
