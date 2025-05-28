import 'package:flutter/material.dart';
class iimages extends StatelessWidget{
  const iimages ({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('images'),
        ),
         body: Image.asset('assets/images/babu.png')
    );
  }
}