import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/images/rouded_image.dart';
import 'package:t_app/common/widgets/product/product_card/product_card_horizontal.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Sports'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
            //   Banner
              AppRoundedImage(width: double.infinity,imageUrl: AppImages.banner1,applyImageRadius: true,),
              Gap(AppSizes.spaceBtwSections),
            //   Sub-Categories
              Column(
                children: [
                //   Heading
                  SectionHeading(title: 'Sports Shirts',onPress: (){},),
                  Gap(AppSizes.spaceBtwItem / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (_,__)=> SizedBox(width: AppSizes.spaceBtwItem),
                      itemBuilder: (_,index)=> ProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
