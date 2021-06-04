import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'url_aot.dart';
import 'home_page.dart';

UrlAot urls = UrlAot();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attack on Titan',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple.shade900,
      ),
      home: MyHomePage(),
    );
  }
}
