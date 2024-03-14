import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/curved_edges/curved_edges_widget.dart';
import 'package:t_app/common/widgets/images/rouded_image.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class ProductDetailImageSlider extends StatelessWidget {
  const ProductDetailImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? AppColors.darkGrey : AppColors.white,
        child: Stack(
          children: [
            // Main large image
            SizedBox(
              height: 370,
              width: double.infinity,
              child: Center(
                child: Image(
                  width: double.infinity,
                  height: 370,
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.airJordan1Midc[4]),
                ),
              ),
            ),
            // Image Slider
            Positioned(
              right: 0,
              bottom: 25,
              left: AppSizes.spaceBtwItem,
              child: SizedBox(
                height: 60,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => SizedBox(
                    width: AppSizes.spaceBtwItem,
                  ),
                  itemCount: AppImages.airJordan1Midc.length,
                  itemBuilder: (_, index) => AppRoundedImage(
                    width: 60,
                    backgroundColor: dark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primary),
                    padding: EdgeInsets.all(AppSizes.xs),
                    imageUrl: AppImages.airJordan1Midc[index],
                  ),
                ),
              ),
            ),
            // App Bar
            CustomAppBar(
              showBackArrow: true,
              actions: [Icon(Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
