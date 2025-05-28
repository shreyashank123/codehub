import 'package:codehub/HomePage/InitialPage.dart';
import 'package:codehub/secondscreen.dart';
import 'package:flutter/material.dart';

class Logoutpage extends StatefulWidget {
  const Logoutpage({super.key});

  @override
  State<Logoutpage> createState() => _LogoutpageState();
}

class _LogoutpageState extends State<Logoutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogOut"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Are you sure you want to logout?",style: TextStyle(fontSize: 26),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12), // Padding inside the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                    ),
                    elevation: 5, // Shadow effect
                  ),
                  child: Text("Cancel")),
              SizedBox(width: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12), // Padding inside the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                    ),
                    elevation: 5, // Shadow effect
                  ),
                  child: Text("Ok")),
            ],
          ),
        ],
      ),
    );
  }
}
