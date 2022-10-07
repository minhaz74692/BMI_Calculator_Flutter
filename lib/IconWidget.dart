//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const genderTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98),
);
class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.gender, required this.iconName});
  final String gender;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FaIcon(iconName,size: 70,),
          SizedBox(
            height: 10,
          ),
          Text(gender, style: genderTextStyle),
        ]
    );
  }
}