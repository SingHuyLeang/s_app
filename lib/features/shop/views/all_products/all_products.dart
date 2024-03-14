import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/product/sortable/sortable_product.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: SortableProduct(),
        ),
      ),
    );
  }
}
