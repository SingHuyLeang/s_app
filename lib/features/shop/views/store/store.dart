import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/app_bar/tabbar.dart';
import 'package:t_app/common/widgets/custom_shapes/search_container.dart';
import 'package:t_app/common/widgets/layouts/gridview.dart';
import 'package:t_app/common/widgets/product/cards/brand_card.dart';
import 'package:t_app/common/widgets/product/cards/card_menu_icon.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/features/shop/views/brands/all_brands.dart';
import 'package:t_app/features/shop/views/store/widgets/category_tab.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            AppCardCounterIcon(icon: Iconsax.shopping_bag, count: 3),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? AppColors.black : AppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    // -- Search Bar --
                    Gap(AppSizes.spaceBtwItem),
                    AppSearchContainer(
                      text: 'Search',
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    Gap(AppSizes.spaceBtwSections),
                    // -- Featured Brands --
                    SectionHeading(title: 'Featured Brands', onPress: ()=> Get.to(()=> AllBrands())),
                    Gap(AppSizes.spaceBtwItem / 1.5),
                    // -- All Brands --
                    AppGirdLayout(
                      mainAxisExtent: 70,
                      itemCount: 4,
                      itemBuilder: (_, index) => AppBrandCard(),
                    ),
                  ],
                ),
              ),
              bottom: AppTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Iphone')),
                  Tab(child: Text('Shoes')),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: <Widget>[
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
