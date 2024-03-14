import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/layouts/gridview.dart';
import 'package:t_app/utils/constant/sizes.dart';

import '../product_card/product_card_vertical.dart';

class SortableProduct extends StatelessWidget {
  const SortableProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   -- Drop Down Button --
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        Gap(AppSizes.spaceBtwSections),
        //   -- Product --
        AppGirdLayout(
          itemCount: 10,
          itemBuilder: (_, index) => ProductCardVertical(),
        ),
      ],
    );
  }
}
