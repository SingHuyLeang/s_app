import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/utils/constant/colors.dart';

class AppLoader{
  static successSnackBar({required title,message = '',duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColors.white,
      backgroundColor: AppColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: EdgeInsets.all(10),
      icon: Icon(Iconsax.check,color: AppColors.white),
    );
  }
  static warningSnackBar({required title,message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.warning_2,color: AppColors.white),
    );
  }
  static errorSnackBar({required title,message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColors.white,
      backgroundColor: AppColors.error,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.warning_2,color: AppColors.white),
    );
  }
}