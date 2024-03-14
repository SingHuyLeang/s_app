import 'package:flutter/material.dart';
import 'package:t_app/features/shop/views/product_review/widgets/progress_indicator_and_rating.dart';

class OverallProductRatings extends StatelessWidget {
  const OverallProductRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              AppRatingProgressIndicator(text: '5', value: 0.5),
              AppRatingProgressIndicator(text: '4', value: 0.4),
              AppRatingProgressIndicator(text: '3', value: 0.3),
              AppRatingProgressIndicator(text: '2', value: 0.2),
              AppRatingProgressIndicator(text: '1', value: 0.1),
            ],
          ),
        ),
      ],
    );
  }
}
