import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';

import 'drawer/drawer_body.dart';
import 'drawer/drawer_header.dart';
import 'home_module/home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProDrawer(
      xOffset: 250,
      drawerHeader:  ProDrawerHeader(),
      drawerBackgroundColor: Color(0xfff6f6f6),
      drawerBody:   DrawerBody(),
      initialPage:  HomeScreen(),
      drawerAnimationDuration: Duration(milliseconds: 300),
    );
  }
}



