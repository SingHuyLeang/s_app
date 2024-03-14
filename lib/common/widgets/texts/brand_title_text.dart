import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/enums.dart';

class AppBrandTitleText extends StatelessWidget {
  const AppBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLine = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final Color? color;
  final int maxLine;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSizes == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
