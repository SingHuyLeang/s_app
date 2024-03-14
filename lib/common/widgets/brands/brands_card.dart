import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/common/widgets/product/cards/brand_card.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppBrandsShowCase extends StatelessWidget {
  const AppBrandsShowCase({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItem),
      child: Column(
        children: [
          // Brand Name
          AppBrandCard(showBorder: false),
          Gap(AppSizes.spaceBtwItem),
          // Top 3 product
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: images
                .map((image) => brandTopProductWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductWidget(String image, BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppRoundedContainer(
      height: 100,
      backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
      margin: EdgeInsets.only(right: AppSizes.sm),
      padding: EdgeInsets.all(AppSizes.sm),
      radius: AppSizes.borderRadiusLg,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
