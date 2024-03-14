import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_app/features/authantucation/controller/onboarding/onboarding_controller.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/device/device_utility.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final contoller = OnboardingController.instane;
    final dark = AppHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getStatusBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: contoller.pageController,
        onDotClicked: contoller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.buttonPrimary : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
