import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:t_app/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:t_app/common/widgets/list_tile/user_profile_list_tile.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/features/pesonalization/views/address/address.dart';
import 'package:t_app/features/shop/views/order/order_screen.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

import '../profile/profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header --
            AppPrimariHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                  ),
                  Gap(AppSizes.spaceBtwSections),
                  // User Profile Card
                  AppUserProfileListTile(
                    onPress: () => Get.to(() => ProfileScreen()),
                  ),
                  Gap(AppSizes.spaceBtwSections),
                ],
              ),
            ),
            // -- Body --
            Padding(
              padding: EdgeInsets.all(AppSizes.spaceBtwItem),
              child: Column(
                children: [
                  // -- Account Setting --
                  SectionHeading(title: 'Account Setting'),
                  Gap(AppSizes.spaceBtwItem),

                  AppSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Card',
                    subtitle: 'Add, remove product and move to checkout',
                    onTap: () {},
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onTap: ()=> Get.to(()=> OrderScreen()),
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discount soupons',
                    onTap: () {},
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subtitle: 'Set any kind of notification message',
                    onTap: () {},
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Security',
                    subtitle: 'Manage data and usage and connected accounts',
                    onTap: () {},
                  ),

                  // -- App Setting --
                  Gap(AppSizes.spaceBtwSections),
                  SectionHeading(title: 'App Setting', showActiveButton: false),

                  Gap(AppSizes.spaceBtwItem),
                  AppSettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to Cloud Firebase',
                  ),

                  AppSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Set result is safe for all ages',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  AppSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
