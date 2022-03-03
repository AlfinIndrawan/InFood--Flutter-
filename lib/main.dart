import 'main_screen.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food nutrtiont',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
