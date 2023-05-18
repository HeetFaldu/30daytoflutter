import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Gallery',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Gallery'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/1.jpg',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/3.jpg',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/4.jpg',
                    height: 100,
                    width: 100,
                  ),
                  Image.network(
                    'https://picsum.photos/200/300',
                    height: 100,
                    width: 100,
                  ),
                  Image.network(
                    'https://picsum.photos/200/300',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              // SizedBox(height: 20),
              // Column(
              //   children: [
              //     Image.network('https://picsum.photos/200/300'),
              //     SizedBox(height: 10),
              //     Image.network('https://picsum.photos/200/300'),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
