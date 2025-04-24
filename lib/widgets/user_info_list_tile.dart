import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_model.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserModel userModel;
  const UserInfoListTile({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.image),
          title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              userModel.title,
              style: AppTextStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              userModel.subTitle,
              style: AppTextStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
