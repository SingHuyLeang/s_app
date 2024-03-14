import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/features/shop/views/card/widget/card_items.dart';
import 'package:t_app/features/shop/views/checkout/checkout.dart';
import 'package:t_app/utils/constant/sizes.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Card', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        // Item in card
        child: CardItems(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwItem,
          horizontal: AppSizes.defaultSpace,
        ),
        child: ElevatedButton(
          onPressed: ()=> Get.to(()=>CheckoutScreen()),
          child: Text('Checkout \$ 256.0'),
        ),
      ),
    );
  }
}
