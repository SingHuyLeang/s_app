import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/features/shop/views/product_review/widgets/rating_progress_indicator.dart';
import 'package:t_app/features/shop/views/product_review/widgets/user_review_card.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';

import '../../../../common/widgets/product/ratings/rating_bar_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- App Bar --
      appBar: CustomAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// -- Body  --
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.spaceBtwItem),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.review_and_rating),
              Gap(AppSizes.spaceBtwItem),
              // Overall Product Ratings
              OverallProductRatings(),
              AppRatingBarIndicator(rating: 4.5),
              Text('12,661',style: Theme.of(context).textTheme.bodySmall),
              Gap(AppSizes.spaceBtwSections),

              // User Reviews List
              for (int i = 0 ; i < 5 ; ++i )
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

