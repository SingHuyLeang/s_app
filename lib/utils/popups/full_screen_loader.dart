import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/loaders/animation_loader.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text,String animation) {
    showDialog(
        context: Get.overlayContext!,
        builder: (_)=>Container(
          color: AppHelperFunction.isDarkMode(Get.context!) ? AppColors.dark:AppColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 250),
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
    );
  }
  static void stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}
