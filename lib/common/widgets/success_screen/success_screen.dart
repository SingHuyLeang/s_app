import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPress});
  final String image,title,subTitle;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //   Image
                Image(image: AssetImage(image),width: AppHelperFunction.screenHeight() * 0.6,),
                Gap(AppSizes.spaceBtwSections),

              //   title & sub title
                Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                Gap(AppSizes.spaceBtwItem),
                Text(subTitle,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
                Gap(AppSizes.spaceBtwSections),

              //   Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: onPress,child: Text(AppTexts.tContinue),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
