import 'package:flutter/material.dart';
import 'package:pro_drawer_example/landing_screen.dart';
import 'package:pro_drawer_example/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App Drawer Demo',
      home: SplashScreen(),
    );
  }
}
