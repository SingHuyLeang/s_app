import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/features/authantucation/controller/signup/signup_controller.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/validators/validators.dart';

import 'term_condition_checkbox.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // First name and Last name
          Row(
            children: [
              // First name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => AppValidators.validateEmptyText('First name', value),
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    label: Text(AppTexts.firstName),
                  ),
                ),
              ),
              Gap(AppSizes.spaceBtwInputField),
              // Last name
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => AppValidators.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    label: Text(AppTexts.lastName),
                  ),
                ),
              ),
            ],
          ),
          Gap(AppSizes.spaceBtwInputField),
          // User Name
          TextFormField(
            controller: controller.userName,
            validator: (value) => AppValidators.validateEmptyText('Username', value),
            expands: false,
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              label: Text(AppTexts.userName),
            ),
          ),
          Gap(AppSizes.spaceBtwInputField),
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => AppValidators.validateEmail(value),
            expands: false,
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              label: Text(AppTexts.email),
            ),
          ),
          Gap(AppSizes.spaceBtwInputField),
          // Phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AppValidators.validatePhoneNumber(value),
            expands: false,
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              label: Text(AppTexts.phoneNumber),
            ),
            keyboardType: TextInputType.phone,
          ),
          Gap(AppSizes.spaceBtwInputField),
          // Password
          Obx(
            ()=> TextFormField(
              controller: controller.password,
              validator: (value) => AppValidators.validatePassword(value),
              expands: false,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: ()=> controller.hidePassword.value = !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
                label: Text(AppTexts.password),
              ),
            ),
          ),
          Gap(AppSizes.spaceBtwItem),
          // Terms & Condition Checkbox
          TermConditionCheckBox(dark: dark),
          Gap(AppSizes.spaceBtwSections),
          // Sign Up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: Text(AppTexts.createAccount),
            ),
          ),
          Gap(AppSizes.spaceBtwItem),
        ],
      ),
    );
  }
}
