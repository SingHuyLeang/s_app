import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/features/authantucation/controller/onboarding/onboarding_controller.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/device/device_utility.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getStatusBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instane.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? AppColors.buttonPrimary : AppColors.dark,
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
