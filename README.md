# pro_drawer

![Pro Drawer](https://raw.githubusercontent.com/shaon2016/pro_drawer/master/media/pro_drawer.gif "Pro Drawer")

A pro level animated and customizable drawer for your flutter apps.

## Usage (See the example for details)

```
class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProDrawer(
      xOffset: 250,
      drawerHeader:  ProDrawerHeader(), // Drawer header UI
      drawerBackgroundColor: Color(0xfff6f6f6),
      drawerBody:   DrawerBody(), // Drawer menu body
      initialPage:  HomeScreen(), // Initial page to load
      drawerAnimationDuration: Duration(milliseconds: 300), // Drawer open close animation
    );
  }
}

```

## Parameters

```
    const ProDrawer({
        Key? key,
        this.drawerHeader, //  A fixed header UI top of the drawer menus
        required this.drawerBody, // Drawer Menu UI
        required this.initialPage, // Initial page to load
        required this.xOffset, // page distance from left when drawer is open
        this.drawerBackgroundColor,
        this.footer, // a fixed footer ui below drawer menu items
        required this.drawerAnimationDuration, // Drawer open close animation
        this.pageContainerDecorationWhileDrawerOpen, // Decoration for the loaded page
        this.pageContainerCircularRadiusWhileDrawerOpen, // By default loaded page is circular and
                                                         // default circular radius is 15.
    }) : super(key: key);

```

## Contacts
shaondeveloper@gmail.com