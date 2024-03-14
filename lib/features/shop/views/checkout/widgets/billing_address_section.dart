import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: 'Shopping Address',buttonTitle: 'Change',showActiveButton: true,onPress: (){},),
        Text('Heng Songha Shop',style: Theme.of(context).textTheme.bodyLarge,),
        Row(
          children: [
            Icon(Icons.phone,color: AppColors.grey,size: 16,),
            Gap(AppSizes.spaceBtwItem),
            Text('+92-371-8668765',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        Gap(AppSizes.spaceBtwItem/2),
        Row(
          children: [
            Icon(Icons.location_history,color: AppColors.grey,size: 16,),
            Gap(AppSizes.spaceBtwItem),
            Text('Cambodia, Phnom Penh, Tek Tla',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
          ],
        ),
      ],
    );
  }
}
