import 'package:flutter/material.dart';
class tabwidget extends StatelessWidget{
  const tabwidget ({super.key});

  @override
  Widget build (BuildContext context){
    return DefaultTabController(
        initialIndex: 1,
        length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        bottom: TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          tabs: [

          Tab(icon: Icon(Icons.chat,),text: "CHATS"),
          Tab(icon: Icon(Icons.chat_bubble_outline,),text: "STATUS",),
          Tab(icon: Icon(Icons.call,),text: "CALLS",),

        ],),
      ),
      body: TabBarView(children: [
        Container(
          child: Center(child: Text("CHATS",style: TextStyle(fontSize: 30),),),
        ),
        Container(child: Center(child: Text("STATUS",style: TextStyle(fontSize: 30),),),),
        Container(child: Center(child: Text("CALLS",style: TextStyle(fontSize: 30),),),),

      ],),
    ));
  }
}