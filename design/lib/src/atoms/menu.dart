import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../core/core.dart';

class MenuSubItemData {
  const MenuSubItemData({
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;
}

class MenuItemData {
  const MenuItemData({
    required this.text,
    required this.onPressed,
    this.subItems = const [],
  });

  final String text;
  final VoidCallback onPressed;
  final List<MenuSubItemData> subItems;
}

class Menu extends StatelessWidget {
  const Menu({
    required this.items,
    this.indexItemSelected = 0,
    super.key,
  }) : assert(indexItemSelected >= 0 && indexItemSelected < items.length);

  static const height = 78.0;

  final List<MenuItemData> items;
  final int indexItemSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: items
              .mapIndexed((index, e) => MenuItem(
                    item: e,
                    isFirst: index == 0,
                    isSelected: index == indexItemSelected,
                  ))
              .toList(growable: false),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    required this.item,
    this.isFirst = false,
    this.isSelected = false,
    super.key,
  });

  final MenuItemData item;
  final bool isFirst;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final style = context.bodyMedium.white.semiBold;
    return SizedBox(
      height: Menu.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isFirst)
            const SizedBox(
              height: 19,
              child: VerticalDivider(color: Colors.white24),
            ),
          TextButton(
            onPressed: item.onPressed,
            child: Row(
              children: [
                Text(
                  item.text,
                  style: isSelected
                      ? style.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationColor: AppColors.white,
                        )
                      : style,
                ),
                if (item.subItems.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Images.chevronDown,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
