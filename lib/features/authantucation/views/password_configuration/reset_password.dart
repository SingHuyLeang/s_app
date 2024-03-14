import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.spaceBtwItem),
          child: Column(
            children: [
              // Image 60 % of the screen
              Image(
                width: AppHelperFunction.screenHeight() * 0.6,
                image: AssetImage(
                  AppImages.verifyMail,
                ),
              ),
              Gap(AppSizes.spaceBtwSections),
              // Title & Subtitle
              Text(
                AppTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              Gap(AppSizes.spaceBtwItem),
              Text(
                AppTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              Gap(AppSizes.spaceBtwSections),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(AppTexts.done),
                ),
              ),
              Gap(AppSizes.spaceBtwItem),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(AppTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
