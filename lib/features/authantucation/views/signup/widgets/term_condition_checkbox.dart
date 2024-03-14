import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/text_string.dart';

import '../../../controller/signup/signup_controller.dart';

class TermConditionCheckBox extends StatelessWidget {
  const TermConditionCheckBox({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Row(
      children: [
        Container(
          width: 23,
          height: 23,
          child: Obx(
            ()=> Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value)=> controller.privacyPolicy.value = value!,
            ),
          ),
        ),
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '${AppTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            TextSpan(
              text: '${AppTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: dark ? AppColors.white : AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? AppColors.white : AppColors.primary,
                  ),
            ),
            TextSpan(
              text: '${AppTexts.and} ',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            TextSpan(
              text: AppTexts.termsOfUse,
              style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: dark ? AppColors.white : AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? AppColors.white : AppColors.primary,
                  ),
            ),
          ],
        )),
      ],
    );
  }
}
