import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Box Volume Calculator',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _length = 1;
  int _breadth = 1;
  int _height = 1;

  void _calculateVolume() {
    int volume = _length * _breadth * _height;
    String message = 'The volume of the box is $volume.';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Box Volume'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box Volume Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('Length: $_length'),
            SizedBox(height: 10),
            Scrollbar(
              child: Slider(
                min: 1,
                max: 5,
                value: _length.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _length = value.toInt();
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Breadth: $_breadth'),
            SizedBox(height: 10),
            Scrollbar(
              child: Slider(
                min: 1,
                max: 5,
                value: _breadth.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _breadth = value.toInt();
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Height: $_height'),
            SizedBox(height: 10),
            Scrollbar(
              child: Slider(
                min: 1,
                max: 5,
                value: _height.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _height = value.toInt();
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
