import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(CovidData1());
}

class CovidData1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<List<CovidData>>(
        future: fetchCovidData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DataTable(
              columns: [
                const DataColumn(label: Text('Country')),
                const DataColumn(label: Text('Confirmed Cases')),
                const DataColumn(label: Text('Total Deaths')),
              ],
              rows: snapshot.data!.map((data) {
                return DataRow(
                  cells: [
                    DataCell(Text(data.country)),
                    DataCell(Text(data.confirmedCases as String)),
                    DataCell(Text(data.totalDeaths as String)),
                  ],
                );
              }).toList(),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<List<CovidData>> fetchCovidData() async {
    final response =
        await http.get(Uri.parse('https://api.covid19api.com/countries'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['data']
          .map((country) => CovidData(
              country: country['country'],
              confirmedCases: country['confirmed'],
              totalDeaths: country['deaths']))
          .toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

class CovidData {
  final String country;
  final int confirmedCases;
  final int totalDeaths;

  CovidData(
      {required this.country,
      required this.confirmedCases,
      required this.totalDeaths});
}
