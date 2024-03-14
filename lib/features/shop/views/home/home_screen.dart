import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:t_app/common/widgets/custom_shapes/search_container.dart';
import 'package:t_app/common/widgets/layouts/gridview.dart';
import 'package:t_app/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/features/shop/views/all_products/all_products.dart';
import 'package:t_app/features/shop/views/home/widget/home_categoies.dart';
import 'package:t_app/features/shop/views/home/widget/home_promo_slider.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';

import 'widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            AppPrimariHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  HomeAppBar(),
                  Gap(AppSizes.spaceBtwSections),
                  // Saerch Container
                  AppSearchContainer(text: 'Search in Store'),
                  Gap(AppSizes.spaceBtwSections),
                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        SectionHeading(
                          title: 'Popular Categories',
                          textColor: AppColors.white,
                          showActiveButton: false,
                        ),
                        Gap(AppSizes.spaceBtwItem),
                        // Categories
                        HomeCatogories(),
                      ],
                    ),
                  ),
                  Gap(AppSizes.spaceBtwSections),
                ],
              ),
            ),
            // Body
            // Banner & Slide - Dot
            Padding(
              padding: const EdgeInsets.all(AppSizes.spaceBtwItem),
              child: Column(
                children: [
                  PromoSliderWidget(
                    banner: [
                      AppImages.banner1,
                      AppImages.banner1,
                      AppImages.banner1
                    ],
                  ),
                  Gap(AppSizes.spaceBtwSections),
                  // Popular Product
                  SectionHeading(title: 'Popular Product', onPress: ()=> Get.to(()=>AllProduct())),
                  Gap(AppSizes.spaceBtwItem),
                  // Product Card
                  AppGirdLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => ProductCardVertical(),
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
