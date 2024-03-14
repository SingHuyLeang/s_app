import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';

class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor = AppColors.white,
    this.duration, this.alignment,
    this.showBorder = false,
  });
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;
  final Color backgroundColor;
  final Duration? duration;
  final AlignmentGeometry? alignment;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration ?? Duration(milliseconds: 0),
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      alignment: alignment,
      decoration: BoxDecoration(
        border: showBorder ? Border.all(color: AppColors.grey) : null,
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
