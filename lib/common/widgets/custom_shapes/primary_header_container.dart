import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/curved_edges/curved_edges_widget.dart';
import 'package:t_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_app/utils/constant/colors.dart';

class AppPrimariHeaderContainer extends StatelessWidget {
  const AppPrimariHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        width: double.infinity,
        color: AppColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -150,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
