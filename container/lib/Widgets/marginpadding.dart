//ek box me jo bhi padding hmlog andr dete h usko "padding" bolte hai
//aur jo padding hmlog bahar dete hai usko "margin" bolte hai
//margin selected widget me milta hai jaise conatiner, sizedBox
//padding hmlog kisi bhi widget pe lga skte hai wrap with context use krke
import 'package:flutter/material.dart';
class marpad extends StatelessWidget{
  const marpad({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text("How to add margin and padding?",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),),
        ),
          // body: Padding(
          //   padding: const EdgeInsets.all(11),
          //   child: Text("Hello Shreya",style: TextStyle(fontSize: 25),),
          // ),

      //margin add karne ke liye hmko same text container me lena parega
      body: Container(
        color: Colors.blueGrey,
        margin: EdgeInsets.all(11),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hello Shreya",style: TextStyle(fontSize: 25,color: Colors.white),),
        ),
      ),
    );
  }
}