import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/features/authantucation/views/login/login_screen.dart';
import 'package:t_app/features/authantucation/views/signup/verify_email_success.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.spaceBtwItem),
          child: Column(
            children: [
              // image verify email
              Image(
                width: AppHelperFunction.screenWidth() * 0.6,
                image: AssetImage(AppImages.verifyMail),
              ),
              Gap(AppSizes.spaceBtwSections),
              // title and subtitle
              Text(
                AppTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              Gap(AppSizes.spaceBtwItem),
              Text(
                'support@team.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              Gap(AppSizes.spaceBtwItem),
              Text(
                AppTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Gap(AppSizes.spaceBtwSections),
              // Button continue
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => VerifyEmailSuccessScreen(
                        image: AppImages.verifyMailSuccess,
                        title: AppTexts.yourAccountCreatedTitle,
                        subTital: AppTexts.yourAccountCreatedSubTitle,
                        onPress: () => Get.offAll(() => LoginScreen()),
                      )),
                  child: Text(AppTexts.tContinue),
                ),
              ),
              Gap(AppSizes.spaceBtwItem),
              // Button resend email
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
