import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AppGirdLayout extends StatelessWidget {
  const AppGirdLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
    this.crossAxisCount = 2,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final int crossAxisCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: AppSizes.gridViewSpacing,
        crossAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
