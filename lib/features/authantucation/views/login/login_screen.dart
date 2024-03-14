import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/common/styles/spacing_style.dart';
import 'package:t_app/common/widgets/login_and_signup/form_divider.dart';
import 'package:t_app/common/widgets/login_and_signup/social_btn.dart';
import 'package:t_app/features/authantucation/views/login/widgets/login_header.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSpacingStyle.paddingWithAppBar,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Login ana subtitle
                AppLoginHeader(dark: dark),
                // Form
                AppLoginForm(),
                // Divider
                AppFormDivider(
                  dark: dark,
                  deviderText: AppTexts.orSignInWith.capitalize!,
                ),
                Gap(AppSizes.spaceBtwItem),
                // Footer
                AppSocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
