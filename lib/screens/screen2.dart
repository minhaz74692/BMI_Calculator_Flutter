//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'input_page.dart';
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Screen 2"),
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: TextButton(

          style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade800, padding: EdgeInsets.all(20)),
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Go Back to home button", style: TextStyle(color: Colors.white),),
        )
      ),
    );
  }
}
