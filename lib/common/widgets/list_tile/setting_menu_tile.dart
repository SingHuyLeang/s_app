import 'package:flutter/material.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/constant/sizes.dart';

class AppSettingMenuTile extends StatelessWidget {
  const AppSettingMenuTile({super.key, required this.icon, required this.title, required this.subtitle, this.trailing, this.onTap});
  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: AppSizes.iconMd + 4, color: AppColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
