import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';

class AppShadowStyle {
  final vertical = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
  final horizontal = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
