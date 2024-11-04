import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/sqflite_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter SQLite with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SqfliteExample(),
    );
  }
}
