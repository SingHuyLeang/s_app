import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/layouts/gridview.dart';
import 'package:t_app/common/widgets/product/cards/brand_card.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/features/shop/views/all_products/all_products.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Brand'),showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
          //   -- Heading --
            SectionHeading(title: 'Brands',showActiveButton: false),
            Gap(AppSizes.spaceBtwItem),
          //   -- Brands  --
            AppGirdLayout(
              itemCount: 10,
              mainAxisExtent: 80,
              itemBuilder: (_,index)=> AppBrandCard(showBorder: true,onTap: ()=> Get.to(()=> AllProduct())),
            ),
          ],
        ),
      ),
    );
  }
}
