import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class infosys extends StatelessWidget{
  const infosys ({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title: Text("Infosys SpringBoard practice",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black
      ),),
        backgroundColor: Colors.cyan,
      ),


      // 1)body: Center(
      //   child: CupertinoTextField(
      //     style: TextStyle(
      //       fontSize: 20.0,
      //       fontStyle: FontStyle.italic,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     textAlign: TextAlign.start,
      //   ),
      // ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.cyanAccent,
                ),
              ),
            ),
             SizedBox(
               width: 10,
               height: 10,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: TextField(
                 obscureText: true,
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         hintText: "Enter password",

                         hintStyle: TextStyle(
                           color: Colors.black,
                         ),
                         filled: true,
                         fillColor: Colors.cyanAccent,

                       ),
                     ),
             ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            TextButton(onPressed: (){
            }, child: Text("Submit"),style: ButtonStyle(
              elevation: WidgetStateProperty.all(10.0),
            ),),



          ],
        ),
      )
    );
  }
}