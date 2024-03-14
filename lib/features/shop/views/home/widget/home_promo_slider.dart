import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_app/common/widgets/images/rouded_image.dart';
import 'package:t_app/features/shop/controller/home_controller.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

class PromoSliderWidget extends StatelessWidget {
  const PromoSliderWidget({super.key, required this.banner});

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeContoller());
    return Column(
      children: [
        // Slide
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banner.map((url) => AppRoundedImage(imageUrl: url)).toList(),
        ),
        Gap(AppSizes.spaceBtwItem),
        // dot slide
        Obx(
          () => Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banner.length; ++i)
                  AppCircularContainer(
                    duration: Duration(milliseconds: 300),
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: AppSizes.sm),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AppColors.primary
                        : AppColors.darkGrey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
