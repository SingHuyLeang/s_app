import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_app/utils/constant/sizes.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // -- Rating --
        Row(
          children: <Widget>[
            Icon(Iconsax.star5, color: Colors.amber, size: 20),
            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: "5.0",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: "(199)"),
                ],
              ),
            ),
          ],
        ),
        // -- Share --
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            size: AppSizes.iconMd,
          ),
        ),
      ],
    );
  }
}
