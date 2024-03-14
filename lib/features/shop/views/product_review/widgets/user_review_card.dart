import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(AppImages.userDara)),
                Gap(AppSizes.spaceBtwItem),
                Text('Dara Heng',style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
        ),
        
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: ' .show less',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.primary),
        ),
        Gap(AppSizes.spaceBtwItem),

      //   Company Reviews
        AppRoundedContainer(
          backgroundColor: dark? AppColors.darkerGrey : AppColors.grey.withOpacity(0.2),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T'S Store",style: Theme.of(context).textTheme.titleMedium),
                    Text("07 Feb 2024",style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                Gap(AppSizes.spaceBtwItem),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'show more',
                  trimExpandedText: ' .show less',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.primary),
                ),
              ],
            ),
          ),
        ),
        Gap(AppSizes.spaceBtwSections),
      ],
    );
  }
}

