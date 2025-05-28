import 'package:flutter/material.dart';

class drawerwid extends StatefulWidget {
  const drawerwid({super.key});

  @override
  State<drawerwid> createState() => _drawerwidState();
}

class _drawerwidState extends State<drawerwid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.cyan[200],
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    color: Colors.cyan,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 40,
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/R.36fc3057651f0fe652612e376a3d5153?rik=FvavN9ema7GzPg&riu=http%3a%2f%2fpetapixel.com%2fassets%2fuploads%2f2019%2f02%2fdownload-2-800x800.jpeg&ehk=6tYvl0vWgGztb0h1tKXc264agdodqpp7TsF7hOEExNE%3d&risl=&pid=ImgRaw&r=0'),
                        ),SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Shreya",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                            Text("Shreya@gmail.com")
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(leading: Icon(Icons.folder),
              title: Text("My Files"),),
              ListTile(leading: Icon(Icons.group),
              title: Text("Shared with me"),),
              ListTile(leading: Icon(Icons.star),
                title: Text("Starred"),),
              ListTile(leading: Icon(Icons.delete),
                title: Text("Trash"),),
              ListTile(leading: Icon(Icons.upload),
                title: Text("Uploads"),),

              Divider(),
              ListTile(leading: Icon(Icons.share),
                title: Text("Share"),),
              ListTile(leading: Icon(Icons.logout),
                title: Text("LogOut"),),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Drawer Widget",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.cyan[200],
      ),
      body: Container(
        child: Center(child: Text("Hey there")),
      ),
    );
  }
}
