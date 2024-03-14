import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppProductQTYAndAddRemoveButton extends StatelessWidget {
  const AppProductQTYAndAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 16,
          child: Icon(
            Iconsax.minus,
            color: dark ? AppColors.white : AppColors.grey,
            size: AppSizes.iconMd,
          ),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        ),
        Gap(AppSizes.spaceBtwItem),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        Gap(AppSizes.spaceBtwItem),
        CircleAvatar(
          radius: 16,
          child: Icon(
            Iconsax.add,
            color: AppColors.white,
            size: AppSizes.iconMd,
          ),
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
