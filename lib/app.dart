import 'package:flutter/material.dart';
import 'screens/home_material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo',
      home: HomeMaterial(),
    );
  }
}
