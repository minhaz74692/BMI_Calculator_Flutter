//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class ReuseableContainer extends StatelessWidget {
  // const ReuseableContainer({Key?key}):super(key:key);
  const ReuseableContainer({super.key, required this.colour, this.cardChild =const Center(child:Text(""))});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
