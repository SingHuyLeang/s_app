import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/images/circular_image.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';

class AppUserProfileListTile extends StatelessWidget {
  const AppUserProfileListTile({super.key, this.onPress});
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppCircularImage(
        image: AppImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Heng Songha',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        'hengsongha@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.white),
      ),
      trailing: IconButton(
        onPressed: onPress,
        icon: Icon(Iconsax.edit, color: AppColors.white),
      ),
    );
  }
}
