import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/device/device_utility.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: dark ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkerGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHieght());
}
