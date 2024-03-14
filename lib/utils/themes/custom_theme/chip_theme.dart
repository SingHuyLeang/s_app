import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';

class AppChipTheme {
  AppChipTheme._();

  // light theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AppColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: AppColors.black),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: AppColors.white,
  );
  // dark theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: AppColors.darkerGrey,
    labelStyle: TextStyle(color: AppColors.white),
    selectedColor: AppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: AppColors.white,
  );
}
