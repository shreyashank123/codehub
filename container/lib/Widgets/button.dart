import 'package:flutter/material.dart';
class button extends StatelessWidget{
  const button ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('buttons'),
      ),
      // body: TextButton(
      //   child: Text('Click here!!'),
      //   onPressed: (){
      //     print('Text button tapped!!');
      //   },
      //   onLongPress: (){
      //     print('Long Pressed!!!');
      //   },
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('Eleveted button'),
      //     onPressed: (){
      //       print('This is Elevated button');
      //     },
      //   ),
      // ),

      body: Center(
        child: OutlinedButton(
          child: Text('Outlined button'),
          onPressed: (){
            print("This is outlined button");
          },
        ),
      ),

    );
  }
}
