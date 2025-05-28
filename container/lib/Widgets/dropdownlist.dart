import 'package:flutter/material.dart';

class dropdownlist extends StatefulWidget{
  const dropdownlist ({super.key});

  @override
  State<dropdownlist> createState() => _dropdownlistState();
}

class _dropdownlistState extends State<dropdownlist> {
  String selectedValue = 'Orange';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Drop Down List", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.blue),),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.cyan,
                isExpanded: true,
                icon: Icon(Icons.arrow_circle_down_rounded),
                value: selectedValue,
                onChanged: (String? newvalue){
                  setState(() {
                    selectedValue = newvalue!;
                  });
                },
                items: <String>[
                  'Orange',
                  'Apple',
                  'Banana',
                  'Mango',
                  'Grapes'
                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(value: value,child: Text(value));
              }).toList(),
              ),
            )
          ]
        ),
      ),
    );
  }
}