import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalC());
}

class BMICalC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090E21),
        scaffoldBackgroundColor: Color(0xFF090E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
