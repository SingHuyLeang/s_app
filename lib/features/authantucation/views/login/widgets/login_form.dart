import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/features/authantucation/views/password_configuration/forgot_password.dart';
import 'package:t_app/features/authantucation/views/signup/signup_screen.dart';
import 'package:t_app/navigationbar_menu.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSizes.spaceBtwItem),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text(AppTexts.email),
              ),
            ),
            Gap(AppSizes.spaceBtwInputField),
            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                label: Text(AppTexts.password),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            Gap(AppSizes.spaceBtwInputField / 2),
            // Remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remeber me
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      Expanded(
                        flex: 5,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            AppTexts.rememberMe,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Forgot Password
                Expanded(
                  flex: 3,
                  child: TextButton(
                    onPressed: () => Get.to(() => ForgotPassword()),
                    child: Text(
                      AppTexts.forgotPassword,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Gap(AppSizes.spaceBtwSections),
            // button sing in
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => AppNavigationMenu()),
                child: Text(AppTexts.signIn),
              ),
            ),
            Gap(AppSizes.spaceBtwItem),
            // button create new account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(AppTexts.createAccount),
              ),
            ),
            Gap(AppSizes.spaceBtwItem),
          ],
        ),
      ),
    );
  }
}
