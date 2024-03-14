import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/product/cards/add_remove_button.dart';
import 'package:t_app/common/widgets/product/cards/card_item.dart';
import 'package:t_app/common/widgets/texts/product_price_text.dart';
import 'package:t_app/utils/constant/sizes.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key, this.showAndAddRemoveButton = true});
  final bool showAndAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: AppSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          CardItem(),
          if (showAndAddRemoveButton)Gap(AppSizes.spaceBtwItem),
          if (showAndAddRemoveButton)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Gap(60),
                  //Add Remove Button
                  AppProductQTYAndAddRemoveButton(),
                ],
              ),
              Gap(AppSizes.spaceBtwItem),
              ProductPriceText(price: '256', isLarge: false),
            ],
          ),
        ],
      ),
    );
  }
}
