import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/brands/brands_card.dart';
import 'package:t_app/common/widgets/layouts/gridview.dart';
import 'package:t_app/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: <Widget>[
              // Brand
              AppBrandsShowCase(
                images: [
                  AppImages.airJordan1Hight[0],
                  AppImages.airJordan1Low[3],
                  AppImages.airJordan1Hight[2],
                ],
              ),
              // Product
              SectionHeading(title: "You might like", onPress: () {}),
              Gap(AppSizes.spaceBtwItem),

              AppGirdLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
