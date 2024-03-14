import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.width = 39,
    this.height = 39,
    this.size = AppSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPress,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor
            : AppHelperFunction.isDarkMode(context)
                ? AppColors.black.withOpacity(0.9)
                : AppColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(icon, color: color),
      ),
    );
  }
}
