import 'package:flutter/material.dart';

class container_sized extends StatelessWidget {
  const container_sized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Container and SizedBox'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              shape: BoxShape.rectangle,
              // borderRadius: BorderRadius.circular(20)
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                blurRadius:20,spreadRadius: 7,color: Colors.blue
                )
              ]),

            child: Center(child: Container(color: Colors.red,),),
            // child: Center(
            //     child: Text(
            //   "Hello",
            //   style: TextStyle(fontSize: 28),
            // )),
          ),
        )
        // Center(
        //   child:SizedBox(height: 50, width: 50, child: Text("Shreya"))),
        );
  }
}
