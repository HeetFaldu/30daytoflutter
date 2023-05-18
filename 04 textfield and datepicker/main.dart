// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import 'NextScreen.dart';

// void main() {
//   runApp(DatePickerScreen());
// }

// class DatePickerScreen extends StatefulWidget {
//   @override
//   _DatePickerScreenState createState() => _DatePickerScreenState();
// }

// class _DatePickerScreenState extends State<DatePickerScreen> {
//   DateTime _selectedDate = DateTime.now();

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2023, 12, 31),
//     );
//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Date Picker'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'Selected Date:',
//                 style: TextStyle(fontSize: 20),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 DateFormat('dd/MM/yyyy').format(_selectedDate),
//                 style:
//                     const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () => _selectDate(context),
//                 child: const Text('Select Date'),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => NextScreen(
//                         firstName: 'John',
//                         selectedDate: _selectedDate,
//                       ),
//                     ),
//                   );
//                 },
//                 child: const Text('Next Screen'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pratical3/firstScreen.dart';

import 'NextScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pratical 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: firstScreen(),
    );
  }
}
