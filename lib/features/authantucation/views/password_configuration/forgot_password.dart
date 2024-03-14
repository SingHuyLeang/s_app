import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/features/authantucation/views/password_configuration/reset_password.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.adaptive.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              AppTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Gap(AppSizes.spaceBtwItem),
            Text(
              AppTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Gap(AppSizes.spaceBtwSections),
            // Text Field
            TextFormField(
              decoration: InputDecoration(
                label: Text(AppTexts.email),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            Gap(AppSizes.spaceBtwSections),
            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPasswordScreen()),
                child: Text(AppTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
