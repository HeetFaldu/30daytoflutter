import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class tab1 extends StatefulWidget {
  const tab1({super.key});

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  bool _checkboxvalue1 = false;
  bool _checkboxvalue2 = false;
  bool _checkboxvalue3 = false;
  bool _checkboxvalue4 = false;

  void showSnackbar() {
    String message = '';
    if (_checkboxvalue1) message += 'checkbox1 is Selected';
    if (_checkboxvalue2) message += 'checkbox2 is Selected';
    if (_checkboxvalue3) message += 'checkbox3 is Selected';
    if (_checkboxvalue4) message += 'checkbox4 is Selected';
    if (message == '') message = 'No checkbox Selected';

    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            title: Text('checkbox1'),
            value: _checkboxvalue1,
            onChanged: (value) {
              setState(
                () {
                  _checkboxvalue1 = value!;
                },
              );
            },
          ),
          CheckboxListTile(
            title: Text('checkBox2'),
            value: _checkboxvalue2,
            onChanged: (value) {
              setState(
                () {
                  _checkboxvalue2 = value!;
                },
              );
            },
          ),
          CheckboxListTile(
            title: Text('checkBox3'),
            value: _checkboxvalue3,
            onChanged: (value) {
              setState(
                () {
                  _checkboxvalue3 = value!;
                },
              );
            },
          ),
          CheckboxListTile(
            title: Text('checkBox4'),
            value: _checkboxvalue4,
            onChanged: (value) {
              setState(
                () {
                  _checkboxvalue4 = value!;
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: showSnackbar,
            child: const Text('Show Deleted CheckBoxes'),
          ),
        ],
      ),
    );
  }
}
