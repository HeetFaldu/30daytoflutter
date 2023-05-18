import 'package:flutter/material.dart';
import 'package:pratical8/drawer.dart';

import 'greet.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      home: drawer(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/greet': (context) => GreetScreen(),
      },
    );
  }
}
