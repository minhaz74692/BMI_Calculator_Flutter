//ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/InputPage.dart';
import 'package:bmi_calculator/ThemePractice.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0E161F),
        hoverColor: Color(0xFF0E161F),
        colorScheme: ColorScheme.dark().copyWith(
          primary: Color(0xFF0E161F),
          secondary: Colors.blue,
        ),
      ),
      home: InputPage(),
    );
  }
}