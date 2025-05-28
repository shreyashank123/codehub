import 'package:flutter/material.dart';

class Androidlect1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Colors.white),
        title: Text("Android Development - Lecture : Introduction",style: TextStyle(color: Colors.white),),
        backgroundColor:Color(0xFF1f6b8d),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.black,
              child: Center(child: Text("Video Player", style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 16),
            Text("Lecture Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              "In this lecture, we will cover the basics of Android development, including the development environment setup, "
                  "understanding Android architecture, and creating your first application. By the end of this lecture, you will have a clear understanding of the foundational concepts of Android development.",
            ),
            SizedBox(height: 8),
            Text("Duration: 30 minutes", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 16),
            Text("Additional Resources", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Column(
              children: [
                TextButton(onPressed: () {}, child: Text("Lecture Notes (PDF)",style: TextStyle(color: Color(0xFF1f6b8d)),)),
                TextButton(onPressed: () {}, child: Text("GitHub Repository",style: TextStyle(color: Color(0xFF1f6b8d)),)),
                TextButton(onPressed: () {}, child: Text("Android Development for Beginners",style: TextStyle(color: Color(0xFF1f6b8d)),)),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text("Comments", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Add a comment...",
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      // Action when button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // Rounded corners
                      ),
                      elevation: 3, // Shadow effect
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
