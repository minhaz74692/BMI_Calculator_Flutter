//ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/components/icon_widget.dart';
import 'package:bmi_calculator/components/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

enum Gender {male, female }

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});


  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  dynamic selectedGender;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
            child: ReuseableContainer(
              onPress: (){
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              colour: selectedGender == Gender.male? kActiveColor:kInactiveColor,
              cardChild: IconWidget(
                  gender: "MALE",
                  iconName: FontAwesomeIcons.mars
              ),
            ),
          ),
          Expanded(
            child: ReuseableContainer(
              onPress: (){
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              colour: selectedGender == Gender.female?kActiveColor:kInactiveColor,
              cardChild: IconWidget(
                  gender: "FEMALE",
                  iconName: FontAwesomeIcons.venus
              ),
            ),
          )
        ]
    );
  }
}
