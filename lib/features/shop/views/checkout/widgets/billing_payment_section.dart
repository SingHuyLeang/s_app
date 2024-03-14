import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(title: 'Payment Method',buttonTitle: 'Change',showActiveButton: true,onPress: (){},),
        Gap(AppSizes.spaceBtwItem / 2),
        Row(
          children: [
            AppRoundedContainer(
              width: 55,
              height: 35,
              backgroundColor: dark ? AppColors.dark : AppColors.white,
              padding: EdgeInsets.all(AppSizes.sm),
              child: Image(image: AssetImage(AppImages.paypalPay),fit: BoxFit.contain,),
            ),
            Gap(AppSizes.spaceBtwItem / 2),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
