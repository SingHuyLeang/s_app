
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image(
            width: AppSizes.iconLg,
            height: AppSizes.iconLg,
            image: AssetImage(AppImages.google),
          ),
        ),
        Gap(AppSizes.spaceBtwItem),
        GestureDetector(
          onTap: () {},
          child: Image(
            width: AppSizes.iconLg,
            height: AppSizes.iconLg,
            image: AssetImage(AppImages.facebook),
          ),
        ),
      ],
    );
  }
}
