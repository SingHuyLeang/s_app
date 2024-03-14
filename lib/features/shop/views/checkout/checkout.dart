import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:t_app/common/widgets/product/cards/coupon_widget.dart';
import 'package:t_app/common/widgets/success_screen/success_screen.dart';
import 'package:t_app/features/shop/views/card/widget/card_items.dart';
import 'package:t_app/features/shop/views/checkout/widgets/billing_address_section.dart';
import 'package:t_app/features/shop/views/checkout/widgets/billing_amount_section.dart';
import 'package:t_app/features/shop/views/checkout/widgets/billing_payment_section.dart';
import 'package:t_app/navigationbar_menu.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true,title: Text("Checkout")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
            //   -- Item in Card
              CardItems(showAndAddRemoveButton: false),
              Gap(AppSizes.spaceBtwSections),
            //   -- Coupon TextField
              CouponCode(),
              Gap(AppSizes.spaceBtwSections),
            //   -- Billing Section
              AppRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                padding: EdgeInsets.all(AppSizes.spaceBtwItem),
                child: Column(
                  children: [
                  //   - Pricing
                    BillingAmountSection(),
                    Gap(AppSizes.spaceBtwItem),
                  //   - Divider
                    Divider(),
                    Gap(AppSizes.spaceBtwItem),
                  //   - Payment Method
                    BillingPaymentSection(),
                    Gap(AppSizes.spaceBtwItem),
                  //   - Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    // -- Checkout  Button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=> Get.to(()=> SuccessScreen(
              image: AppImages.paymentVerify,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPress: () => Get.offAll(()=>  AppNavigationMenu()),
            ),
          ),
          child: Text('Checkout \$ 256.0'),
        ),
      ),
    );
  }
}
