import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/product/cards/card_menu_icon.dart';
import 'package:t_app/features/shop/views/card/card.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/text_string.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .apply(color: AppColors.white),
          ),
          Text(
            AppTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: AppColors.white),
          ),
        ],
      ),
      actions: [
        AppCardCounterIcon(
          icon: Iconsax.shopping_bag,
          iconColor: AppColors.white,
          count: 2,
          onTap: () => Get.to(() => CardScreen()),
        ),
      ],
    );
  }
}
