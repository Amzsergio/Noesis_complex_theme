import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noesis_theme/config/menu/menu.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: colors.primary,
      ),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
