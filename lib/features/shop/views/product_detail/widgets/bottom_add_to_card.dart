import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/icons/circular_icon.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppBottomAddToCard extends StatelessWidget {
  const AppBottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
          topRight: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AppColors.darkGrey,
                width: 40,
                height: 40,
                color: AppColors.white,
              ),
              Gap(AppSizes.spaceBtwItem),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              Gap(AppSizes.spaceBtwItem),
              AppCircularIcon(
                icon: Iconsax.add,
                backgroundColor: AppColors.black,
                width: 40,
                height: 40,
                color: AppColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add to card'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(AppSizes.md),
              backgroundColor: AppColors.black,
              side: BorderSide(color: AppColors.black),
            ),
          ),
        ],
      ),
    );
  }
}
