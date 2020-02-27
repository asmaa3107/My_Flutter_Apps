import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF090C22),
          accentColor: Color(0xFFEA1556),
          scaffoldBackgroundColor:  Color(0xFF090C22),
      ),
      initialRoute:'/',
      routes:{
        '/': (context)=>InputPage(),
        '/resultpage': (context)=> ResultPage()
      },
    );
  }
}
  // theme: ThemeData(
      //   primaryColor: Color(0xFF090C22),
      //   accentColor: Color(0xFFEA1556),
      //   scaffoldBackgroundColor:  Color(0xFF090C22),
      //   textTheme: TextTheme(
      //   body1: TextStyle(color: Colors.white),
      // ),
      // ),