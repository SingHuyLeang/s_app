import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AppRoundedImage extends StatelessWidget {
  const AppRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = AppColors.light,
    this.fit = BoxFit.contain,
    this.isNetWorkImage = false,
    this.onTap,
    this.boderRadius = AppSizes.md,
    this.padding,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final bool isNetWorkImage;
  final VoidCallback? onTap;
  final double boderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(boderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(boderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetWorkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
