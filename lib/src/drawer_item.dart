import 'package:flutter/material.dart';

class DrawerItem {
  final IconData icon;
  final String title;
  Widget? screen;

   DrawerItem({required this.icon, required this.title, this.screen});
}
