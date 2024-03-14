import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: AppHelperFunction.screenWidth() * 0.8,
            height: AppHelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Gap(AppSizes.spaceBtwItem),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
