import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/features/pesonalization/views/address/add_new_address.dart';
import 'package:t_app/features/pesonalization/views/address/widgets/single_address.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: ()=> Get.to(()=> AddNewAddressScreen()),
        child: CircleAvatar(
          child: Icon(Icons.add,color: AppColors.white),
          backgroundColor: AppColors.primary,
          radius: 28,
        ),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Address',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
