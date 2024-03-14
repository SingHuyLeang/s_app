import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';

class AppFormDivider extends StatelessWidget {
  const AppFormDivider({
    super.key,
    required this.dark,
    required this.deviderText,
  });
  final bool dark;
  final String deviderText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(deviderText),
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
