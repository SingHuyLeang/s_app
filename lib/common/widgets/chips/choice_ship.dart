import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/helpers/helper_function.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? AppCircularContainer(
                width: 35,
                height: 35,
                backgroundColor: AppHelperFunction.getColor(text)!,
              )
            : null,
        shape: isColor ? CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        selectedColor: isColor ? Colors.green : null,
        backgroundColor: isColor ? Colors.green : null,
      ),
    );
  }
}
