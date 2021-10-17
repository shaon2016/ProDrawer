import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'drawer_items.dart';
import 'home_screen.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProDrawer(
      xOffset: 250,
      drawerBackgroundColor: Colors.brown,
      drawerHeader: drawerHeader(),
      drawerBody: const DrawerBody(),
      footer: loadFooter(),
      initialPage: const HomeScreen(), drawerAnimationDuration: const Duration(microseconds: 250),
    );
  }

  drawerHeader() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(Icons.arrow_back),
              SizedBox(
                height: 20,
              ),
              Text("Ashiqul Islam",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }

  loadFooter() {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      height: 200,
      child: const Align(
        alignment: Alignment.center,
        child: Text("Log out"),
      ),
    );
  }



}

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: DrawerItems.all
          .map(
            (item) => ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          leading: Icon(item.icon),
          title: Text(
            item.title,
          ),
          onTap: () {
            ProDrawer.of(context).setPage(item);
          },
        ),
      )
          .toList(),
    );
  }
}
