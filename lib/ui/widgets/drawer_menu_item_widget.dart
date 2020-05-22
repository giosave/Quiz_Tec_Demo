import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';

class DrawerMenuItemWidget extends StatelessWidget {
  final int index, selectedIndex;
  final String title;
  final IconData icon;
  final Function onChangeMenu;

  const DrawerMenuItemWidget({
    this.title,
    this.icon,
    this.index,
    this.selectedIndex,
    this.onChangeMenu
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: (index == selectedIndex),
      leading: Icon(icon, size: (index == selectedIndex) ? 30 : 20),
      title: (index == selectedIndex)
      ? label(title, FSize.Normal, FWeight.Bold, PRIMARY_COLOR)
      : label(title, FSize.Small),
      onTap: () {
        onChangeMenu(index);
        Navigator.pop(context);
      }
    );
  }
}