import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RSettingMenuTitle extends StatelessWidget {
  const RSettingMenuTitle(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.trailing, this.onTap});

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 28,
        color: RColors.primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
    );
  }
}
