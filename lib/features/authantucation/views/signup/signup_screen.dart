import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/login_and_signup/form_divider.dart';
import 'package:t_app/common/widgets/login_and_signup/social_btn.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.adaptive.arrow_back,
            color: dark ? AppColors.light : AppColors.light,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Gap(AppSizes.spaceBtwSections),
              // Form
              SignUpForm(dark: dark),
              // Devider
              AppFormDivider(
                dark: dark,
                deviderText: AppTexts.orSignUpWith.capitalize!,
              ),
              Gap(AppSizes.spaceBtwItem),
              // Footer
              AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
