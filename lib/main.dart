import 'package:coffeeshopui/page/home_page.dart';
import 'package:coffeeshopui/utils/custom_functions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop UI',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(Brightness.light),
      home: const HomePage(),
    );
  }
}
