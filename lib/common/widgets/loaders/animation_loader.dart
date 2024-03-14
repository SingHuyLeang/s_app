import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget({super.key, required this.text, required this.animation, this.showAction = false, this.actionText, this.onActionPress});

  final String text,animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          LottieBuilder.asset(animation,width: MediaQuery.of(context).size.width * 0.8,),
          SizedBox(height: AppSizes.defaultSpace,),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.defaultSpace,),
          showAction ?
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: onActionPress,
                style: OutlinedButton.styleFrom(backgroundColor: AppColors.dark),
                child: Text(
                  actionText!,
                  style: Theme.of(context).textTheme.bodyMedium!
                      .apply(color: AppColors.light),
                ),
              ),
            ): SizedBox(),

        ],
      ),
    );
  }
}
