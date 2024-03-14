import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/images/rouded_image.dart';
import 'package:t_app/common/widgets/texts/barnd_title_text_with_verify.dart';
import 'package:t_app/common/widgets/texts/product_text_title.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        // Image
        AppRoundedImage(
          imageUrl: AppImages.airJordan1Midb[0],
          width: 60,
          height: 60,
          padding: EdgeInsets.all(AppSizes.sm),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        ),
        Gap(AppSizes.spaceBtwItem),
        // Title & Price &Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBrandTitleWithVerify(title: 'Nike'),
              Flexible(
                child: AppProductTextTitle(
                  title: 'Yellow Sport Shoes',
                  maxLine: 1,
                ),
              ),
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08 ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
