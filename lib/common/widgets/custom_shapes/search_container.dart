import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding =
        const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            border: showBorder ? Border.all(color: AppColors.grey) : null,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            color: showBackground
                ? dark
                    ? AppColors.dark
                    : AppColors.light
                : Colors.transparent,
          ),
          child: Row(
            children: [
              Icon(icon, color: dark ? AppColors.light : AppColors.darkerGrey),
              Gap(AppSizes.spaceBtwItem),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
