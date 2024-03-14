import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.textColor,
    this.showActiveButton = true,
    this.onPress,
  });
  final String title, buttonTitle;
  final Color? textColor;
  final bool showActiveButton;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActiveButton)
          TextButton(onPressed: onPress, child: Text(buttonTitle))
      ],
    );
  }
}
