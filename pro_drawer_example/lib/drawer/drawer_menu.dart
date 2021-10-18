import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:pro_drawer_example/home_module/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_drawer_example/order_history/order_history.dart';

class DrawerMenus {
  static final home = DrawerMenu(
      icon: _getSvgIcon("group_34229.svg"),
      title: "Home",
      screen: const HomeScreen());
  static final orderHistory = DrawerMenu(
      icon: _getSvgIcon("group_34233.svg"),
      title: "Order History",
      screen: const OrderHistory());

  static final logOut = DrawerMenu(
      icon: _getSvgIcon("group_34232.svg"),
      title: "Log Out",
      screen: const HomeScreen());

  static final all = <DrawerMenu>[
    home,
    orderHistory,
  ];

  static Widget _getSvgIcon(String assetName) => SizedBox(
        height: 28.h,
        width: 28.w,
        child: SvgPicture.asset("assets/icons/$assetName"),
      );
}
