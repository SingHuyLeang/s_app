import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';
class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 40,
      separatorBuilder: (_,__)=> Gap(AppSizes.spaceBtwItem),
      itemBuilder: (_, index) => AppRoundedContainer(
      showBorder:true,
      padding: EdgeInsets.all(AppSizes.md),
      backgroundColor: dark ? AppColors.dark : AppColors.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //   Icon
                  Icon(Iconsax.ship),
                  Gap(AppSizes.spaceBtwItem / 2),
                  //   Status and Date
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: AppColors.primary,fontSizeDelta: 1),),
                      Text('21 Feb 2023',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeDelta: 2),),
                    ],
                  ),
                ],
              ),
              Spacer(),
              //   Button
              IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34,size: AppSizes.iconSm,),),
            ],
          ),
          Gap(AppSizes.spaceBtwItem),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Iconsax.tag),
                    Gap(AppSizes.spaceBtwItem / 2),
                    //   Status and Date
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order',style: Theme.of(context).textTheme.bodyLarge!.apply(color: AppColors.primary,fontSizeDelta: 1),),
                        Text('[#0021]',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeDelta: 2),),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Iconsax.calendar),
                    Gap(AppSizes.spaceBtwItem / 2),
                    //   Status and Date
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shipping',style: Theme.of(context).textTheme.bodyLarge!.apply(color: AppColors.primary,fontSizeDelta: 1,),),
                        Text('03 Feb 2024',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeDelta: 2),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}
