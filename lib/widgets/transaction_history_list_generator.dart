import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/transaction_history_items_list.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListGenerator extends StatelessWidget {
  const TransactionHistoryListGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionItems
          .map(
            (e) => TransactionItem(
              transactionModel: e,
            ),
          )
          .toList(),
    );
  }
}
