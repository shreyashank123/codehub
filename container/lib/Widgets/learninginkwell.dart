import 'package:flutter/material.dart';

class learninginkwell extends StatelessWidget {
  const learninginkwell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('About InkWell'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("Text tapped");
          },onDoubleTap: (){
            print("Text double tapped");
          },onLongPress: (){
            print("Text long pressed");
          },
          child: Container(
            child: Text('TEXT', style: TextStyle(color: Colors.red, fontSize: 30),),
          ),
        ),
      )
    );
  }
}
