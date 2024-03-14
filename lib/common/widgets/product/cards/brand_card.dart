import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/common/widgets/images/circular_image.dart';
import 'package:t_app/common/widgets/texts/barnd_title_text_with_verify.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/enums.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({super.key, this.showBorder = true, this.onTap});
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        padding: EdgeInsets.all(AppSizes.xs),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        radius: 16,
        child: Row(
          children: [
            // -- Icon --
            Flexible(
              child: AppCircularImage(
                image: AppImages.nike,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? AppColors.white : AppColors.black,
              ),
            ),
            Gap(AppSizes.spaceBtwItem / 2),
            // -- Text --
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppBrandTitleWithVerify(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
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
