import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback? openDrawer;

  const HomeScreen({Key? key, this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              ProDrawer.of(context).toggle();
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = 0; i < 10; i++)
                      Container(
                        margin: const EdgeInsets.all(8),
                        color: Colors.red,
                        width: 100,
                        height: 100,
                        child: Center(child: Text("Index $i")),
                      ),
                  ],
                )),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text("Index $index"),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
