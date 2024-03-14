import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/common/widgets/app_bar/appbar.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  AddNewAddressScreen({super.key});
  final keyForm = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Add New Address',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            key: keyForm,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                  ),
                ),
                Gap(AppSizes.spaceBtwInputField),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number',
                  ),
                ),
                Gap(AppSizes.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street',
                        ),
                      ),
                    ),
                    Gap(AppSizes.spaceBtwInputField),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal Code',
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppSizes.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City',
                        ),
                      ),
                    ),
                    Gap(AppSizes.spaceBtwInputField),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State',
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppSizes.spaceBtwInputField),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: 'Country',
                  ),
                ),
                Gap(AppSizes.spaceBtwInputField),
                // Save
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Save'),
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
