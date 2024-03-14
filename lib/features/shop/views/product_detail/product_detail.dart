import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/features/shop/views/product_detail/widgets/bottom_add_to_card.dart';
import 'package:t_app/features/shop/views/product_detail/widgets/product_attributes.dart';
import 'package:t_app/features/shop/views/product_detail/widgets/product_detail_image_slider.dart';
import 'package:t_app/features/shop/views/product_detail/widgets/product_meta_data.dart';
import 'package:t_app/features/shop/views/product_detail/widgets/rating_share_widget.dart';
import 'package:t_app/features/shop/views/product_review/product_review.dart';
import 'package:t_app/utils/constant/sizes.dart';
// import 'package:t_app/utils/helpers/helper_function.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: AppBottomAddToCard(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // -- 1. Product Image Slider --
              ProductDetailImageSlider(),
              // -- 2. Product Detail --
              Padding(
                padding: EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace,
                ),
                child: Column(
                  children: <Widget>[
                    // -- Rating & Share --
                    RatingAndShare(),
                    // -- Price, title, stock, & brand
                    ProductMetaData(),
                    // -- Attributes --
                    ProductAttributes(),
                    Gap(AppSizes.spaceBtwSections),
                    // -- Checkout Button --
                    SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){} , child: Text('Check Out')),),
                    Gap(AppSizes.spaceBtwSections),
                    // -- Decription --
                    SectionHeading(title: 'Decription',showActiveButton: false),
                    Gap(AppSizes.spaceBtwItem),
                    ReadMoreText('Reloaded 1 of 1224 libraries in 3,706ms (compile: 48 ms, reload: 1377 ms, reassemble: 2178 ms). Reloaded 1 of 1224 libraries in 4,082ms (compile: 36 ms, reload: 1363 ms, reassemble: 2573 ms).D/ViewRootImpl(17928): DisplayId = 0Reloaded 1 of 1224 libraries in 4,059ms (compile: 30 ms, reload: 1708 ms, reassemble: 2205 ms).Reloaded 1 of 1224 libraries in 5,451ms (compile: 33 ms, reload: 1474 ms, reassemble: 3820 ms).D/ViewRootImpl(17928): DisplayId = 0I/chatty  (17928): uid=10279(com.example.t_app) identical 1 lineD/ViewRootImpl(17928): DisplayId = 0Reloaded 2 of 1224 libraries in 4,239ms',
                      trimLength: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'See more',
                      trimExpandedText: ' Less',
                      moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    ),
                    // -- Review --
                    Divider(),
                    Gap(AppSizes.spaceBtwItem),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionHeading(title: 'Reviews (199)'),
                        IconButton(onPressed: ()=> Get.to(()=> ProductReviewsScreen()), icon: Icon(Iconsax.arrow_right_3)),
                      ],
                    ),
                    Gap(AppSizes.spaceBtwSections),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
