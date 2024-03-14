import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';
import 'package:badges/badges.dart' as badges;

class AppCardCounterIcon extends StatelessWidget {
  const AppCardCounterIcon({
    super.key,
    this.onTap,
    required this.icon,
    this.count,
    this.iconColor,
    this.size,
  });
  final void Function()? onTap;
  final IconData icon;
  final int? count;
  final Color? iconColor;
  final double? size;
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: 0, end: 3),
      badgeAnimation: badges.BadgeAnimation.slide(
        disappearanceFadeAnimationDuration: Duration(milliseconds: 100),
        curve: Curves.fastOutSlowIn,
      ),
      showBadge: count == null || count == 0 ? false : true,
      badgeStyle: badges.BadgeStyle(
        badgeColor: AppColors.error,
      ),
      badgeContent: Text(
        count.toString(),
        style: TextStyle(color: Colors.white),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor == null
              ? dark
                  ? AppColors.white
                  : AppColors.black
              : iconColor,
          size: size ?? AppSizes.iconMd,
        ),
        onPressed: onTap,
      ),
    );
  }
}
