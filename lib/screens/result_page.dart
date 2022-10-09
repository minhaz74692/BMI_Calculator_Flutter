//ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/constants.dart';
import 'input_page.dart';
import 'package:bmi_calculator/reusable_Container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  const ResultPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Your BMI Result"),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your result", style: kResultTitle,),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableContainer(colour: kActiveColor, onPress: () {  },
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  <Widget>[
                Center(child: Text( resultText, style: kResultText,)),
                Center(child: Text( bmiResult, style: kBmiText,)),
                Center(child: Text( interpretation, style: kResultBody, textAlign: TextAlign.center,),
                ),
              ],
            ),),
          ),
          BottomButton(buttonTitle: "RE-CALCULATE", onTap: (){
            Navigator.pop(context);
          },
          ),
        ],
      ),
    );
  }
}
