import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:pro_drawer_example/home_module/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerMenus {
  static final home = DrawerMenu(
      icon: _getSvgIcon("group_34229.svg"),
      title: "Home",
      screen: HomeScreen());
  static final orderHistory = DrawerMenu(
      icon: _getSvgIcon("group_34233.svg"),
      title: "Order History",
      screen: HomeScreen());
  static final wishList = DrawerMenu(
      icon: _getSvgIcon("group_34234.svg"),
      title: "Wish List",
      screen: HomeScreen());
  static final editProfile = DrawerMenu(
      icon: _getSvgIcon("group_34235.svg"),
      title: "Edit Profile",
      screen: HomeScreen());
  static final myAddress = DrawerMenu(
      icon: _getSvgIcon("group_34236.svg"),
      title: "My Address",
      screen: HomeScreen());
  static final changeLanguage = DrawerMenu(
      icon: _getSvgIcon("group_34237.svg"),
      title: "Change language",
      screen: HomeScreen());
  static final setting = DrawerMenu(
      icon: _getSvgIcon("group_34230.svg"),
      title: "Setting",
      screen: HomeScreen());
  static final callCenter = DrawerMenu(
      icon: _getSvgIcon("group_34231.svg"),
      title: "Call Center",
      screen: HomeScreen());
  static final logOut = DrawerMenu(
      icon: _getSvgIcon("group_34232.svg"),
      title: "Log Out",
      screen: HomeScreen());

  static final all = <DrawerMenu>[
    home,
    orderHistory,
    wishList,
    editProfile,
    myAddress,
    changeLanguage,
    setting,
    callCenter,
  ];

  static Widget _getSvgIcon(String assetName) => SizedBox(
        height: 28.h,
        width: 28.w,
        child: SvgPicture.asset("assets/icons/$assetName"),
      );
}
