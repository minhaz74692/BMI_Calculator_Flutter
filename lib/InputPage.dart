//ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/IconWidget.dart';
import 'package:bmi_calculator/ReuseableContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const bottomContainerHeight= 70.0;
const bottomContainerColor= Color(0xFFEB1555);
const reUseContainerColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const activeColor = Color(0xFF1D1E33);
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;

  //1=male , 2 = female
  void updateColor(int genderType){
    if(genderType == 1){
      maleColor == inactiveColor? {  //This is actually If-Else Statement ternory operator
        maleColor = activeColor,
        femaleColor = inactiveColor
      }: maleColor = inactiveColor;
    }else if(genderType == 2){
      femaleColor == inactiveColor? {  //This is actually If-Else Statement ternory operator
        femaleColor = activeColor,
        maleColor= inactiveColor
      }: femaleColor = inactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
                children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReuseableContainer(
                      colour: maleColor,
                      cardChild: IconWidget(
                          gender: "MALE",
                          iconName: FontAwesomeIcons.mars
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReuseableContainer(
                      colour: femaleColor,
                      cardChild: IconWidget(
                          gender: "FEMALE",
                          iconName: FontAwesomeIcons.venus
                      ),
                    ),
                  ),
                )
                ]
            ),
          ),
          Expanded(
            child: Row(
                children: const <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                        colour: reUseContainerColor
                    ),
                  )
                ]
            ),
          ),
          Expanded(
            child: Row(
                children: const <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                        colour: reUseContainerColor
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                        colour: reUseContainerColor
                    ),
                  )
              ]
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
          )
        ]
      ),
    );
  }
}

