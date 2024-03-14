import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';

class AppLoginHeader extends StatelessWidget {
  const AppLoginHeader({super.key, required this.dark});
  final bool dark;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? AppImages.appLogoLight : AppImages.appLogoDark,
          ),
        ),
        Gap(AppSizes.defaultSpace),
        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Gap(AppSizes.sm),
        Text(
          AppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
