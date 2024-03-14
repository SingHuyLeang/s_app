import 'package:flutter/material.dart';
import 'package:t_app/features/authantucation/controller/onboarding/onboarding_controller.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHieght(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instane.skipPage(),
        child: Text('Skip'),
      ),
    );
  }
}
