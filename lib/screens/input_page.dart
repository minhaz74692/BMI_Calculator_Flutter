//ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/components/gender_section.dart';
import 'package:bmi_calculator/components/icon_widget.dart';
import 'package:bmi_calculator/components/reusable_container.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  dynamic selectedGender;
  double _height = 150;
  int _weight = 50;
  int age = 20;
  void bmiResult(){
    // int height = weightSection.yo
      Alert(
        context: context,
        title: "Your BMI Is : 21.5",
        desc: "According to WHO your BMI is NORMAL",
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            width: 120,
            child: Text(
              "COOL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ).show();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E161F),
        title: Center(child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:GenderSection(),
          ),
          Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                      onPress: (){},
                      colour: kReUseContainerColor,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("HEIGHT", style: kLabelTextStyle,textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget> [
                                Text(
                                  "${_height.round()}",
                                  style: kBodyTextStyle,
                                ),
                                Text(
                                  "cm",
                                  style: kLabelTextStyle,
                                )
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Color(0xFFffffff),
                                  inactiveTrackColor: Color(0xFF8D8E98),
                                  thumbColor: Color(0xFFEB1555),
                                  overlayColor: Color(0x29EB1555),
                                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                                  overlayShape: RoundSliderOverlayShape(overlayRadius: 25)
                              ),
                              child: Slider(
                                value: _height,
                                min: 120,
                                max: 220,
                                label: _height.round().toString(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    _height = newValue;
                                  });
                                },
                              ),
                            )
                          ]
                      ),
                    ),
                  )
                ]
            ),
          ),
          Expanded(
            child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                        onPress: (){},
                        colour: kReUseContainerColor,
                        cardChild:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Text("WEIGHT", style: kLabelTextStyle,),
                            Text(_weight.toString(), style: kBodyTextStyle ,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  <Widget>[
                                // FloatingActionButton(  //This button is from flutter package
                                //     onPressed: (){},
                                //   backgroundColor: Color(0xFF4C4F5E),
                                //   child: Icon(Icons.remove, size: 35,),
                                // ),
                                RoundIconButton(  //But this button is from our own built widget Button below
                                  onClick: (){
                                    setState(() {
                                      _weight--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width:15 ,
                                ),
                                RoundIconButton(
                                  onClick: (){
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,

                                )
                              ],
                            )
                          ],
                        )
                    ),
                  ),

                  Expanded(  //.........THIS is age part.........
                    child: ReuseableContainer(
                      onPress: (){},
                      colour: kReUseContainerColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  <Widget>[
                          Text("AGE", style: kLabelTextStyle,),
                          Text(age.toString(), style: kBodyTextStyle ,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  <Widget>[
                              // FloatingActionButton(  //This button is from flutter package
                              //     onPressed: (){},
                              //   backgroundColor: Color(0xFF4C4F5E),
                              //   child: Icon(Icons.remove, size: 35,),
                              // ),
                              RoundIconButton(  //But this button is from our own built widget Button below
                                onClick: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width:15 ,
                              ),
                              RoundIconButton(
                                onClick: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ]
            ),
          ),
          BottomButton(buttonTitle: "Calculate BMI",
            onTap: (){
            CalculatorBrain calc = CalculatorBrain(weight: _weight, height: _height);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                ),
              ),
            );
          },
          ),
        ]
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.buttonTitle, required this.onTap});
  final Function() onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        child: Center(child: Text(buttonTitle , style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),),),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  const RoundIconButton({super.key, required this.icon, required this.onClick});

  final IconData icon;
  final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      shape: CircleBorder(),
      elevation: 6,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
