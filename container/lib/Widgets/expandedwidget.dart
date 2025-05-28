import'package:flutter/material.dart';
class expwidget extends StatelessWidget{
  const expwidget ({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("How To Expand Widget?",style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),)),
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       flex: 2, //isse hmlog expended widget me ratio provide kr skte hai
      //       //2 dene se ye 5 ka container 2:1:1:1:1 me divide ho gya
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.pink,
      //
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       //ye 2:4:1:1:1 me divide kiya...jispe hmlog flex lgate h uske alawe remaining portion equally divide ho jata h
      //       child: Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child:Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.orange,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.deepPurple,
      //       ),
      //     )
      //   ],
      // ),
      //now for the column
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              //width: 100,//agar hmlog width ko remove kr de to wo automatically pura width(as per screen size) le lega
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              //width: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              //width: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              //width: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              //width: 100,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),

    );
  }
}