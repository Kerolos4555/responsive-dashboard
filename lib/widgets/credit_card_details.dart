import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class CreditCardDetails extends StatelessWidget {
  const CreditCardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(
            right: 42,
            left: 31,
            top: 16,
          ),
          title: Text(
            'Name card',
            style: AppTextStyles.styleRegular16(context).copyWith(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'Syah Bandi',
            style: AppTextStyles.styleMedium20(context),
          ),
          trailing: SvgPicture.asset(
            Assets.gallery,
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: AppTextStyles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                '12/20 - 124',
                style: AppTextStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Flexible(
          child: SizedBox(
            height: 27,
          ),
        ),
      ],
    );
  }
}
