import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class News {
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  News(
      {required this.title,
      required this.description,
      required this.url,
      required this.urlToImage});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
}

Future<List<News>> fetchNews() async {
  final response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=2def8e0cd4844266a4e2ed5458772e77'));
  //'https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final articles = data['articles'] as List;

    return articles.map((article) => News.fromJson(article)).toList();
  } else {
    throw Exception('Failed to fetch news');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('News'),
        ),
        body: FutureBuilder<List<News>>(
          future: fetchNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        title: Text(snapshot.data![index].title),
                        subtitle: Text(snapshot.data![index].description),
                        leading:
                            Image.network(snapshot.data![index].urlToImage)),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
