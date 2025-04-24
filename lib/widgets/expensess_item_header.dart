import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensessItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackgroundColor;
  final Color? imageColor;
  final Color? iconColor;

  const ExpensessItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor,
    this.imageColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackgroundColor ?? const Color(0xffFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: 3.14159,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconColor ?? const Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
