import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 89, 51, 194), // Title color
        scaffoldBackgroundColor: Color.fromARGB(255, 172, 168, 168),  // Background color
      ),
      home: HomePage(),
    );
  }
}
