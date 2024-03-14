import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.text,
    this.textColor = AppColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image;
  final String text;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItem),
        child: Column(
          children: [
            // Image
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? AppColors.black : AppColors.white),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? AppColors.light : AppColors.black,
                ),
              ),
            ),
            Gap(AppSizes.spaceBtwItem / 2),
            // Text
            SizedBox(
              width: 40,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: AppColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
