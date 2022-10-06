//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator"),
        ),
      ),
      body: Center(
        child: Text("Body Text"),
      ),
    );
  }
}
