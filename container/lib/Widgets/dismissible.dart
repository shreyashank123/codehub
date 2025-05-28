import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class dismis extends StatefulWidget{
  const dismis ({super.key});

  @override
  State<dismis> createState() => _dismisState();
}

class _dismisState extends State<dismis> {
  List<String> fruits = ["Orange", "Apple", "Mango", "grapes","Banana"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dismissible Widget",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
        ),
        backgroundColor: Colors.pinkAccent[100],
      ),
        body: ListView.builder(itemCount: fruits.length,
        itemBuilder: (context,index){
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction==DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.red));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.green,));
              }
            },
              key: Key(fruit),
                background: Container(
                  color: Colors.red,
                ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: Card(
                child: ListTile(
                            title: Text(fruits[index]),
                            ),
              ),
          );
        },),
    );
  }
}