import 'package:flutter/material.dart';
class locationWidget extends StatefulWidget{
  const locationWidget ({super.key});

  @override
  State<locationWidget> createState() => _locationWidgetState();
}

class _locationWidgetState extends State<locationWidget> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("GeoLoaction"),
      ),
      body: Column(
        children: [
          Text("Location",style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){}, child: Text("Get Location"))
        ],
      ),
    );
  }
}