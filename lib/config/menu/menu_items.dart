import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Botones",
    subTitle: "botones",
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Cards",
    subTitle: "cards",
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: "Progress Indicator",
    subTitle: "Progress Indicator",
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: "SnackBars y dialogs",
    subTitle: "SnackBar",
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: "Animated Container",
    subTitle: "Animated",
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),

  ///ui-controls
  MenuItem(
    title: "UI Controls",
    subTitle: "Controls",
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
];
