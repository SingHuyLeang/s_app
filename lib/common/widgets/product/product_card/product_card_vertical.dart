import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/styles/shadow_style.dart';
import 'package:t_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_app/common/widgets/icons/circular_icon.dart';
import 'package:t_app/common/widgets/images/rouded_image.dart';
import 'package:t_app/common/widgets/texts/barnd_title_text_with_verify.dart';
import 'package:t_app/common/widgets/texts/product_price_text.dart';
import 'package:t_app/common/widgets/texts/product_text_title.dart';
import 'package:t_app/features/shop/views/product_detail/product_detail.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/enums.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetail()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: dark ? AppColors.dark : AppColors.white,
          boxShadow: [AppShadowStyle().vertical],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        ),
        child: Column(
          children: [
            // Thumnail , Whis List button, Discount Tag
            AppCircularContainer(
              height: 180,
              backgroundColor: dark ? AppColors.darkContainer : AppColors.light,
              radius: AppSizes.productImageRadius,
              child: Stack(
                children: [
                  // Thumnail
                  AppRoundedImage(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl: AppImages.airJordan1Midc[4],
                    applyImageRadius: true,
                    boderRadius: AppSizes.productImageRadius,
                  ),
                  // Sale tag
                  Positioned(
                    top: 8,
                    left: 8,
                    child: AppCircularContainer(
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
                  ),
                  // Wish List
                  Positioned(
                    top: 0,
                    right: 0,
                    child: AppCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Gap(AppSizes.spaceBtwItem / 2),
            // Detail
            Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Model
                  AppProductTextTitle(title: 'Air Jordan 1 Mid'),
                  Gap(AppSizes.spaceBtwItem / 2),
                  // Brand Name
                  AppBrandTitleWithVerify(
                    title: 'Nike',
                    brandTextSizes: TextSizes.medium,
                  ),
                ],
              ),
            ),
            Spacer(),
            // Qty & Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                ProductPriceText(price: '35.0'),
                // Qty Count
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: dark ? AppColors.darkerGrey : AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(AppSizes.productImageRadius),
                    ),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.add,
                        size: AppSizes.iconMd,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
