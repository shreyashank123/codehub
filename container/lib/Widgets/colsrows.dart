import'package:flutter/material.dart';
class rowscols extends StatelessWidget {
  const rowscols({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Rows and Columns'),
      ),
      body: Container(
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Column(
                  children: [
                    Text('I', style: TextStyle(fontSize: 30),),
                    Text('II',style: TextStyle(fontSize: 30),),
                    Text('III',style: TextStyle(fontSize: 30),),
                    Text('IV',style: TextStyle(fontSize: 30),),
                  ],
                ),
                Text('1', style: TextStyle(fontSize: 30),),
                Text('2',style: TextStyle(fontSize: 30),),
                Text('3',style: TextStyle(fontSize: 30),),
                Text('4',style: TextStyle(fontSize: 30),),
              ],
            ),
            Text('A', style: TextStyle(fontSize: 30),),
            Text('B',style: TextStyle(fontSize: 30),),
            Text('C',style: TextStyle(fontSize: 30),),
            Text('D',style: TextStyle(fontSize: 30),),
            Text('E',style: TextStyle(fontSize: 30),),
            Text('F',style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){

            }, child: Text('Click'))
          ],
        ),
      )

    );
  }
}