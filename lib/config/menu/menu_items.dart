import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Counter riverpod',
      subTitle: 'un contador usando riverpod',
      link: '/counter',
      icon: Icons.plus_one),
  MenuItems(
      title: 'Botones',
      subTitle: 'varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'varias tarjetas en flutter',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores y pantallas',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItems(
      title: 'Aniamted container',
      subTitle: 'stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItems(
      title: ' ui controls mas types',
      subTitle: 'una serie de controles en flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Tutorial',
      subTitle: 'un tutorial de muestra',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItems(
      title: 'Pull to refresh and infinity scroll',
      subTitle: 'un tutorial de muestra',
      link: '/infinityScroll',
      icon: Icons.list_alt_rounded),
  MenuItems(
      title: 'theme changer',
      subTitle: 'cambiar tema de la aplicacion',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
