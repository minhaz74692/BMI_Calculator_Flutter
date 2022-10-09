//ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/screens//input_page.dart';
import 'package:bmi_calculator/screens//result_page.dart';
import 'package:bmi_calculator/screens/screen1.dart';
import 'package:bmi_calculator/screens//screen2.dart';
import 'package:bmi_calculator/components/theme_practice.dart';
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
        ),
      ),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context)=> InputPage(),
      //   '/first': (context)=> Screen1(),
      //   '/second': (context) => Screen2(),
      //   '/result': (context)=> ResultPage(),
      // },
    );
  }
}