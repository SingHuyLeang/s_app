import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/features/shop/views/order/widget/order_listt.dart';
import 'package:t_app/utils/constant/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- app bar
      appBar: CustomAppBar(showBackArrow: true,title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        /// -- orders
        child: OrderListItems(),
      ),
    );
  }
}
