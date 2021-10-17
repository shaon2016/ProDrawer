import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';

class HistoryScreen extends StatelessWidget {
  final VoidCallback? openDrawer;
  const HistoryScreen({Key? key,  this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed:() {
            ProDrawer.of(context).toggle();
          },
        ),
      ),);
  }
}
