import 'package:flutter/material.dart';

class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Show Alert",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              backgroundColor: Colors.deepPurple),
          onPressed: () {
            _showMyDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple[100],
          scrollable: true, //when the content is scrollable then you can use this property
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          title: Text("This is an Alert"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("This is a demo"),
                Text("This is Shreya Shankar")
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: (){}, child: Text("Approve")),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Cancel")),

          ],
        );
      });
}
