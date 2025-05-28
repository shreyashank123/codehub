//listTile is divided into three parts
//1)Leading
//2)Title and subtitle
//3)Trailing

//and we will also implement circle avatar in this listtile

import 'package:flutter/material.dart';
class listtile extends StatelessWidget{
  const listtile ({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("What is Flutter ListTile and How its included in ListView Builder", style:(TextStyle(fontSize:13,color: Colors.black)),),
      ),
      body: Center(
          child: Column(
            children: [
              CircleAvatar(
                child: Text("Hello",style: TextStyle(color: Colors.white),),
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/c4/7e/f9/c47ef951ce4a81eeee19a7426b910421.jpg'),
                // radius: 100,
                // minRadius: 50,
                maxRadius: 70,
              ),
            ],
          ),
        ),
    );
  }
}