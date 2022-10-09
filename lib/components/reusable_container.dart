//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class ReuseableContainer extends StatelessWidget {
  // const ReuseableContainer({Key?key}):super(key:key);
  const ReuseableContainer({super.key, required this.colour, this.cardChild =const Center(child:Text("")),  required this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
