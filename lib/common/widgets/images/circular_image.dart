import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 50,
    this.height = 50,
    this.padding = AppSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? AppColors.black : AppColors.white),
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider),
      ),
      // child: Center(
      //   child: Image(
      //     fit: fit,
      //     color: overlayColor,
      //     image: isNetworkImage
      //         ? NetworkImage(image)
      //         : AssetImage(image) as ImageProvider,
      //   ),
      // ),
    );
  }
}
