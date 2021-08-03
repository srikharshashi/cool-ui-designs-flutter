import 'package:flutter/material.dart';
import 'package:talenthire/screens/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: TextTheme()),
      title: 'Talent Hunt -- Raja Yogan',
      home: Screen1(),
    );
  }
}
