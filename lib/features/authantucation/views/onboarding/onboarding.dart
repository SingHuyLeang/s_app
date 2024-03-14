import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_app/features/authantucation/controller/onboarding/onboarding_controller.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/text_string.dart';

import 'widgets/onboarding_indicator.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final contoller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable page
          PageView(
            controller: contoller.pageController,
            onPageChanged: contoller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: AppImages.onboarding1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onboarding2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onboarding3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip button
          OnBoardingSkip(),
          // Dot indicator
          OnBoardingDotIndicator(),
          // Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
