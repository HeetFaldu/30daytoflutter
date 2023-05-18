import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class tab2 extends StatefulWidget {
  const tab2({super.key});

  @override
  State<tab2> createState() => _tab2State();
}

class _tab2State extends State<tab2> {
  String selectedValue = "";

  void showSelectedValue() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('selected value : $selectedValue'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile(
          title: Text('option 2'),
          value: "option1",
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text('option 2'),
          value: "option2",
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text('option 3'),
          value: "option3",
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text('option 4'),
          value: "option4",
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
        ),
        ElevatedButton(
          onPressed: () {
            showSelectedValue();
          },
          child: Text('Show Selected Value'),
        ),
      ],
    );
  }
}
