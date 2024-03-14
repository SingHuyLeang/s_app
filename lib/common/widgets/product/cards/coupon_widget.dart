import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AppColors.dark: AppColors.white,
      padding: EdgeInsets.only(left: AppSizes.md,right:  AppSizes.sm,top:  AppSizes.sm,bottom:  AppSizes.sm),
      child: Row(
        children: [
          // -- Text Field
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have promote code ? Enter here',
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          //   Button
          SizedBox(
            width: 77,
            height: 60,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Apply"),
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? AppColors.white.withOpacity(0.5) : AppColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
