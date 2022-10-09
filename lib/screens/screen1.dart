//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'input_page.dart';
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Screen 1"),
        backgroundColor: Colors.black38,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade800, padding: EdgeInsets.all(20)),
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
              child: Text("Go Back to home", style: TextStyle(color: Colors.white),),
            ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade800, padding: EdgeInsets.all(20)),
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
                child: Text("Go to Second Screen", style: TextStyle(color: Colors.white),),
              ),
            ]
          )
      ),
    );
  }
}
