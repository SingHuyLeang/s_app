import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/sizes.dart';
import 'package:t_app/utils/constant/text_string.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class VerifyEmailSuccessScreen extends StatelessWidget {
  const VerifyEmailSuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTital,
    required this.onPress,
  });
  final String image, title, subTital;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.spaceBtwItem),
            child: Column(
              children: [
                // image verify email
                Image(
                  width: AppHelperFunction.screenWidth() * 0.6,
                  image: AssetImage(image),
                ),
                Gap(AppSizes.spaceBtwSections),
                // title and subtitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Gap(AppSizes.spaceBtwItem),
                Text(
                  subTital,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                Gap(AppSizes.spaceBtwSections),
                // Button continue
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPress,
                    child: Text(AppTexts.tContinue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
