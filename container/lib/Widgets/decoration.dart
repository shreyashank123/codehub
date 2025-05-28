import 'package:flutter/material.dart';
class decor extends StatelessWidget{
  const decor({Key?key}):super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Container Decoration", style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.w400),)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.blue.shade50,
        child: Center(
          child: InkWell(
            onTap: (){
              print("Gola tapped");
            },
            onDoubleTap: (){
              print("Gola double tapped");
            },
            onLongPress: (){
              print("Gola long pressed");
            },
            child: Container(
              width: 150,
              height: 150,
              // color: Colors.pink,
              decoration: BoxDecoration(
                //cannot use decoration and alag se color..agar color use krna h to decoration ke andr kro nhi to decoration he mat use kro
                color: Colors.pink,
                    // borderRadius: BorderRadius.circular(20),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                // borderRadius: BorderRadius.all(Radius.circular(21)),
                border: Border.all(width: 3,color: Colors.black),
                  boxShadow:[ BoxShadow(
                  blurRadius: 51,
                    color: Colors.grey,
                    spreadRadius: 21,
              )],
                shape: BoxShape.circle //Throws an error kyuki agar box shape de rhe h to Border radius dene ka koi fiada nhi h
              ),
            ),
          ),
        ),
      )
    );
  }
}