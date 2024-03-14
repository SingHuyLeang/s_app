import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';
class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? AppColors.primary.withOpacity(0.6) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? AppColors.darkerGrey : AppColors.grey,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItem),
      padding: EdgeInsets.all(AppSizes.md),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? AppColors.light : AppColors.dark : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jonh Sone',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Gap(AppSizes.sm /2 ),
              Text(
                '(+123) 77 888 888',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Gap(AppSizes.sm /2 ),
              Text('84261 Phnom Penh,Cambodia',softWrap: true,overflow: TextOverflow.ellipsis),
            ],
          ),
        ],
      ),
    );
  }
}
