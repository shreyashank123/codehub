import 'package:flutter/material.dart';
class bottomSheet extends StatelessWidget{
  const bottomSheet ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          child:Text("Show Bottom Sheet",style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
          ),
          onPressed: (){

            showModalBottomSheet(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
              backgroundColor: Colors.deepPurple[100],
                elevation: 0,
                isDismissible: false,
                enableDrag: true,
                context: context, builder: (context){
              return Column(
                mainAxisSize:MainAxisSize.min,
                  children: [
                ListTile(
                  title: Text("Orange"),
                  subtitle: Text("Shreya"),
                ),
                ListTile(
                  title: Text("Apple"),
                  subtitle: Text("Sanchita"),
                ),
                ListTile(
                  title: Text("Mango"),
                  subtitle: Text("Shreya"),
                ),
                ListTile(
                  title: Text("Litchi"),
                  subtitle: Text("Nilesh"),
                ),
                ListTile(
                  title: Text("Grapes"),
                  subtitle: Text("Lucky"),
                ),
                ListTile(
                  title: Text("Watermelon"),
                  subtitle: Text("Kishan"),
                ),
              ],);
            });
          },
        ),
      ),
    );
  }
}