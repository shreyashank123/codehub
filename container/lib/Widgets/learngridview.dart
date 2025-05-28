import 'package:flutter/material.dart';

class grid extends StatelessWidget {
  const grid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ["Orange", "Apple", "Banana", "Grapes", "papaya"];
    Map fruits_person = {
      'fruits': ["Orange", "Apple", "Banana", "Grapes", "papaya"],
      'person': ["Shreya", "Sanchita", "Ayushi", "harsh", "Nilesh"],
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Grid View",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        //     child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: (){
        //           print(fruits_person['person'][index]);
        //         },
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['person'][index]),
        //         trailing: Icon(Icons.accessibility),
        //       ),
        //     );
        //   },
        // )),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20,childAspectRatio: 2/3),
          children: [
            Card(
              color: Colors.pinkAccent,
              child: Center(
                  child: Text(
                "Shreya",
                style: TextStyle(fontSize: 30),
              )),
            ),
            Card(
              color: Colors.cyan,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.yellow,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.orange,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.deepPurple,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.blueAccent,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.grey,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.lightGreen,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.redAccent,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Card(
              color: Colors.brown,
              child: Center(
                  child: Text(
                    "Shreya",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
