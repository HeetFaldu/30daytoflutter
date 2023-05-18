import 'package:flutter/material.dart';
import 'package:pratical1/tab1.dart';
import 'package:pratical1/tab2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "tab1",
                ),
                Tab(
                  text: "tab2",
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            tab1(),
            tab2(),
          ]),
        ),
      ),
    );
  }
}
