import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/styles/shadow_style.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/common/widgets/icons/circular_icon.dart';
import 'package:t_app/common/widgets/images/rouded_image.dart';
import 'package:t_app/common/widgets/texts/barnd_title_text_with_verify.dart';
import 'package:t_app/common/widgets/texts/product_price_text.dart';
import 'package:t_app/common/widgets/texts/product_text_title.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: dark ? AppColors.darkerGrey : AppColors.softGrey,
        boxShadow: [AppShadowStyle().horizontal],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
      ),
      child: Row(
        children: [
        //   Thumbnail
          AppRoundedContainer(
            height: 120,
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
              //   Thumbnail Image
                AppRoundedImage(
                  imageUrl: AppImages.airJordan1Mida[4],
                  applyImageRadius: true,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              //   Sale Tag
                Positioned(
                  top: 0,
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.sm),
                    child: AppRoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(horizontal: AppSizes.sm,vertical: AppSizes.xs),
                      child: Text('25 %',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.black),),
                    ),
                  ),
                ),
              //   Favorite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.sm),
                    child: AppCircularIcon(icon: Iconsax.heart5,color: Colors.red,),
                  ),
                ),
              ],
            ),
          ),
        //   Detail
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: AppSizes.sm,left: AppSizes.sm,),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppProductTextTitle(title: 'Blue Nike Air Jorden man 1 shirt'),
                      Gap(AppSizes.spaceBtwItem/2),
                      AppBrandTitleWithVerify(title: 'Nike'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //   Pricing
                      Flexible(child: ProductPriceText(price: '256.0')),
                    //   Add to card
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
          ),
        ],
      ),
    );
  }
}