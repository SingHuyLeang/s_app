
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';

class AppRatingBarIndicator extends StatelessWidget {
  const AppRatingBarIndicator({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 18,
      unratedColor: AppColors.grey.withOpacity(0.5),
      itemBuilder: (_, __) => Icon(Iconsax.star1,color: AppColors.primary),
    );
  }
}