import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppRoundedContainer extends StatelessWidget {
  const AppRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = AppSizes.cardRadiusLg,
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor = AppColors.white,
    this.alignment,
    this.showBorder = false,
    this.borderColor,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;
  final Color? backgroundColor, borderColor;
  final AlignmentGeometry? alignment;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      alignment: alignment,
      decoration: BoxDecoration(
        border: showBorder
            ? Border.all(
                color: borderColor ??
                    (dark ? AppColors.darkContainer : AppColors.grey),
              )
            : null,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
