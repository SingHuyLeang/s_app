import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t_app/utils/constant/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   -- Subtitle
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 256.0',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Gap(AppSizes.spaceBtwItem / 2),
        // -- Shopping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shopping Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 6.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        Gap(AppSizes.spaceBtwItem / 2),
        // -- Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 6.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        Gap(AppSizes.spaceBtwItem / 2),
        // -- Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$ 6.0',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
