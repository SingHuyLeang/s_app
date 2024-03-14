import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:get/get.dart';
import 'package:t_app/features/shop/views/sub_category/sub_category.dart';
class HomeCatogories extends StatelessWidget {
  const HomeCatogories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => VerticalImageText(
          image: 'assets/icons/categories/shoe.png',
          text: 'Shoes',
          onTap: () => Get.to(()=> SubCategoriesScreen()),
        ),
      ),
    );
  }
}
