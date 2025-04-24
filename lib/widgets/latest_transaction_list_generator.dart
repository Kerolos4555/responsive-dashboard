import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/latest_transaction_items_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListGenerator extends StatelessWidget {
  const LatestTransactionListGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: latestTransactionItems
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  userModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
