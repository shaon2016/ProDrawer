import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_drawer_example/landing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
        builder: () => const MaterialApp(home: LandingScreen(),),
    );
  }
}
