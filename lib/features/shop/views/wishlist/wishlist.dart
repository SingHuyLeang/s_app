import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/icons/circular_icon.dart';
import 'package:t_app/common/widgets/layouts/gridview.dart';
import 'package:t_app/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:t_app/features/shop/views/home/home_screen.dart';
import 'package:t_app/utils/constant/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          AppCircularIcon(
            icon: Iconsax.add,
            onPress: () => Get.to(() => HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppGirdLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
