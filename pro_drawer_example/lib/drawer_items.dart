import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';

import 'history_screen.dart';
import 'home_screen.dart';

class DrawerItems {
  static final home = DrawerItem(icon: Icons.home, title: "Home", screen: HomeScreen());
  static final orderHistory = DrawerItem(icon: Icons.history, title: "Order History", screen: HistoryScreen());

  static final all = <DrawerItem>[
    home,
    orderHistory,

  ];


}
