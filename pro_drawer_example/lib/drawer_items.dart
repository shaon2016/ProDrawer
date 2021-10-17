import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';

import 'history_screen.dart';
import 'home_screen.dart';

class DrawerItems {
  static final home = DrawerMenu(icon: Icons.home, title: "Home", screen: HomeScreen());
  static final orderHistory = DrawerMenu(icon: Icons.history, title: "Order History", screen: HistoryScreen());

  static final all = <DrawerMenu>[
    home,
    orderHistory,

  ];


}
