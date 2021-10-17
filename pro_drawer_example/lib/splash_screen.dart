import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:pro_drawer_example/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
      Future.delayed(const Duration(seconds: 2), () {
      navigationPage();
    });
  }

  void navigationPage() async {
    try {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingScreen()),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Image.asset("assets/images/portrait1.jpg"),
        ),
      ),
    );
  }
}
