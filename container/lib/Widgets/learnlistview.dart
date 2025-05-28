//listTile is divided into three parts
//1)Leading
//2)Title and subtitle
//3)Trailing

import'package:flutter/material.dart';
class learnlistview extends StatelessWidget{
  const learnlistview ({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    List arrnames = ['Shreya', 'Aditya', 'Shankar', 'Mohan','Kunnu', 'Kishan','Bunnu'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('Learning List View', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.white),)),
      ),
      body:
        ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: Text('${index+1}'),
            title: Text(arrnames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        //     Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(arrnames[index], style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //       ),
        //     ],
        //   );
         },
          itemCount: arrnames.length,
          // itemExtent: 300,
          separatorBuilder: (context,index){
          return Divider(height: 20,thickness: 4,);
          },
          // scrollDirection: Axis.horizontal,
        )
    );
  }
}