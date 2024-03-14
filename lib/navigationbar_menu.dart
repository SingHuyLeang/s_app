import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/features/shop/views/home/home_screen.dart';
import 'package:t_app/features/shop/views/store/store.dart';
import 'package:t_app/features/shop/views/wishlist/wishlist.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

import 'features/pesonalization/views/setting/setting_screen.dart';

class AppNavigationMenu extends StatelessWidget {
  const AppNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppNavigationController());
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          animationDuration: Duration(milliseconds: 2000),
          height: 80,
          elevation: 0,
          selectedIndex: controller.index.value,
          onDestinationSelected: (value) => controller.index.value = value,
          backgroundColor: dark ? AppColors.black : AppColors.white,
          indicatorColor: dark
              ? AppColors.white.withOpacity(0.1)
              : AppColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.index.value]),
    );
  }
}

class AppNavigationController extends GetxController {
  RxInt index = 0.obs;
  final screens = [
    HomeScreen(),
    StoreScreen(),
    FavoriteScreen(),
    SettingScreen(),
  ];
}
