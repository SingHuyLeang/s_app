import 'package:flutter/material.dart';
import 'package:t_app/utils/themes/custom_theme/app_bar_theme.dart';
import 'package:t_app/utils/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:t_app/utils/themes/custom_theme/checkbox_theme.dart';
import 'package:t_app/utils/themes/custom_theme/chip_theme.dart';
import 'package:t_app/utils/themes/custom_theme/elevate_button_theme.dart';
import 'package:t_app/utils/themes/custom_theme/outline_button_theme.dart';
import 'package:t_app/utils/themes/custom_theme/text_form_field_theme.dart';
import 'package:t_app/utils/themes/custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevateButtonTheme.lightElevateButtonTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme,
    
  );
  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevateButtonTheme.darkElevateButtonTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme,
  );
}
