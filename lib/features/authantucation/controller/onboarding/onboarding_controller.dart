import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_app/features/authantucation/views/login/login_screen.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instane => Get.find();

  /// Variable
  final pageController = PageController();
  Rx<int> currenPageIndex = 0.obs;

  // Update Curren index when page scroll
  void updatePageIndicator(index) => currenPageIndex.value = index;
  // Jum to the specific dot seleted page
  void dotNavigationClick(index) {
    currenPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Curren index and Jum to next page
  void nextPage() {
    if (currenPageIndex.value == 2) {
      final storage = GetStorage();
      storage.writeIfNull('isFirstTime', false);
      Get.offAll(() => LoginScreen());
    } else {
      final page = currenPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Curren index and Jum to last page
  void skipPage() {
    currenPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
