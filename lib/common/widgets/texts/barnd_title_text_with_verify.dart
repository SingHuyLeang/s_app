import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/texts/brand_title_text.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/enums.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AppBrandTitleWithVerify extends StatelessWidget {
  const AppBrandTitleWithVerify({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Brean
        AppBrandTitleText(
          title: title,
          color: textColor,
          maxLine: maxLine,
          textAlign: textAlign,
          brandTextSizes: brandTextSizes,
        ),
        Gap(AppSizes.xs),
        // Verify Brean
        Icon(
          Iconsax.verify5,
          color: AppColors.primary,
          size: AppSizes.iconSm,
        ),
      ],
    );
  }
}
