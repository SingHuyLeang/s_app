import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/common/widgets/images/circular_image.dart';
import 'package:t_app/common/widgets/texts/section_heading.dart';
import 'package:t_app/features/pesonalization/views/profile/widgets/profile_menu.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/constant/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- AppBar --
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // -- Body --
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.spaceBtwItem),
          child: Column(
            children: [
              // -- Profile User --
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    AppCircularImage(
                      image: AppImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              // -- Detail --
              Gap(AppSizes.spaceBtwItem / 2),
              Divider(),
              Gap(AppSizes.spaceBtwItem),

              // -- Heading Profile info --
              SectionHeading(
                title: 'Profile Information',
                showActiveButton: false,
              ),
              Gap(AppSizes.spaceBtwItem),

              ProfileMenu(title: 'Name', value: 'Heng Songha', onTap: () {}),
              ProfileMenu(
                title: 'Username',
                value: 'heng_songha',
                onTap: () {},
              ),
              Gap(AppSizes.spaceBtwItem),

              // -- Heading Personal Info --
              SectionHeading(
                title: 'Personal Information',
                showActiveButton: false,
              ),
              Gap(AppSizes.spaceBtwItem),

              ProfileMenu(title: 'User ID', value: '456789', onTap: () {}),
              ProfileMenu(title: 'E-mail', value: 'heng_songha', onTap: () {}),
              ProfileMenu(
                  title: 'Phone Number',
                  value: '+855-97-8888888',
                  onTap: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onTap: () {}),
              ProfileMenu(
                  title: 'Date Of Birth', value: '10 Apr', onTap: () {}),
              Divider(),
              Gap(AppSizes.spaceBtwItem),

              // -- Close account --
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: AppColors.error),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
