import 'file:///C:/Users/inner/StudioProjects/bmi-calculator-flutter/lib/screens/results_screen.dart';
import 'package:flutter/material.dart';

import 'screens/input_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      initialRoute: '/',
      routes: {
        '/': (context) => InputScreen(),
        '/results': (context) => ResultsScreen(),
      },
    );
  }
}
