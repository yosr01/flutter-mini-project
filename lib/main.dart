import 'package:flutter/material.dart';
import 'package:projet1/home_screen.dart';
import 'package:projet1/medicine_screen.dart';
import 'package:projet1/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainSreen(),
    );
  }
}
