import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0D22),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}
