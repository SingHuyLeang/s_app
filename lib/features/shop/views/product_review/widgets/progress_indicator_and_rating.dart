import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/device/device_utility.dart';
import 'package:capped_progress_indicator/capped_progress_indicator.dart';

class AppRatingProgressIndicator extends StatelessWidget {
  const AppRatingProgressIndicator({super.key, required this.text, required this.value});
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: Container(
            width: AppDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearCappedProgressIndicator(
              value: value,
              minHeight: 10,
              cornerRadius: 8,
              backgroundColor: AppColors.grey.withOpacity(0.5),
              valueColor: AlwaysStoppedAnimation(
                AppColors.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
