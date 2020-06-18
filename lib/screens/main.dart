import 'package:bmicalculatot/screens/Result_Page.dart';
import 'package:flutter/material.dart';
import '../Z1.dart';
import 'Result_Page.dart';

void main() => runApp(Z0());

class Z0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFA0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      title: 'BMI CALCULATOR',
      color: Color(0xFF1D1E33),
      initialRoute: '/',
      routes: {
        '/': (context) => Z1(),
        '/result': (context) => Result(
            userData.getResult(), userData.calcBmi(), userData.getAdvice()),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
