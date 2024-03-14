import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_app/common/widgets/images/circular_image.dart';
import 'package:t_app/common/widgets/texts/barnd_title_text_with_verify.dart';
import 'package:t_app/common/widgets/texts/product_price_text.dart';
import 'package:t_app/common/widgets/texts/product_text_title.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/enums.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // -- Price And Sale price --
        Row(
          children: <Widget>[
            // -- Sale Tag --
            AppCircularContainer(
              width: 50,
              height: 30,
              radius: AppSizes.sm,
              alignment: Alignment.center,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                '25 %',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: AppColors.black),
              ),
            ),
            Gap(AppSizes.spaceBtwItem),
            // -- Price --
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            Gap(AppSizes.spaceBtwItem),
            ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        Gap(AppSizes.spaceBtwItem / 1.5),
        // -- Title --
        AppProductTextTitle(title: 'Air Jordan 1 mid mens'),
        Gap(AppSizes.spaceBtwItem / 1.5),
        // -- Stock Status --
        Row(
          children: <Widget>[
            AppProductTextTitle(title: 'Status'),
            Gap(AppSizes.spaceBtwItem),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        Gap(AppSizes.spaceBtwItem / 1.5),
        // -- Brand --
        Row(
          children: <Widget>[
            AppCircularImage(
              image: AppImages.nike,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.black : AppColors.white,
            ),
            Gap(AppSizes.spaceBtwItem / 2),
            AppBrandTitleWithVerify(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
