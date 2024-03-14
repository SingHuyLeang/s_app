import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/chips/choice_ship.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/common/widgets/texts/product_price_text.dart';
import 'package:t_app/common/widgets/texts/product_text_title.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      children: <Widget>[
        // -- Selected Attibutes Pricing and Decription --
        AppRoundedContainer(
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.softGrey,
          padding: EdgeInsets.all(AppSizes.md),
          child: Column(
            children: <Widget>[
              // -- Title Price and Status --
              Row(
                children: [
                  SectionHeading(title: "Variation", showActiveButton: false),
                  Gap(AppSizes.spaceBtwItem),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppProductTextTitle(
                              title: "Price : ", smallSize: true),
                          //  Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          Gap(AppSizes.spaceBtwItem / 2),
                          // Sale Price
                          ProductPriceText(price: '20', isLarge: false),
                        ],
                      ),
                      Row(
                        children: [
                          AppProductTextTitle(
                              title: "Stock : ", smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // Variation Decription
              AppProductTextTitle(
                title:
                    'This is the decription of the product and it can go up to 4 maxline',
                maxLine: 4,
                smallSize: true,
              ),
            ],
          ),
        ),
        Gap(AppSizes.spaceBtwItem),
        // -- Attributes --
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Colors', showActiveButton: false),
            Gap(AppSizes.spaceBtwItem / 2),
            Wrap(
              children: [
                AppChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                AppChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                AppChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Sizes', showActiveButton: false),
            Gap(AppSizes.spaceBtwItem / 2),
            Wrap(
              spacing: AppSizes.sm,
              children: [
                AppChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                AppChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                AppChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
