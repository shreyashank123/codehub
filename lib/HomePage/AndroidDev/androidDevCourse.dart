import 'package:codehub/HomePage/AndroidDev/androidLect1.dart';
import 'package:flutter/material.dart';

class AndroidDevelopmentCoursePage extends StatelessWidget {
  final List<Map<String, String>> lectures = [
    {'title': 'Introduction to Android Development', 'duration': '10:45 min'},
    {'title': 'Setting up Android Studio', 'duration': '15:30 min'},
    {'title': 'Understanding Android Components', 'duration': '12:10 min'},
    {'title': 'Activities and Lifecycles', 'duration': '18:25 min'},
    {'title': 'Building UIs with XML', 'duration': '20:05 min'},
    {'title': 'Layouts and Views', 'duration': '22:40 min'},
    {'title': 'RecyclerView and Adapters', 'duration': '19:50 min'},
    {'title': 'Data Storage in Android', 'duration': '16:35 min'},
    {'title': 'Networking in Android', 'duration': '23:10 min'},
    {'title': 'Deploying your first App', 'duration': '14:45 min'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: const Text('Android Development Crash Course',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF1f6b8d), // Custom app bar color
      ),
      body: ListView.builder(
        itemCount: lectures.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(15),
              title: Text(
                lectures[index]['title']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                lectures[index]['duration']!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: const Color(0xFF1f6b8d),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              trailing: const Icon(Icons.play_circle_fill, color: Color(0xFF1f6b8d)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Androidlect1()));
                // Action when a lecture is tapped
              },
            ),
          );
        },
      ),
    );
  }
}

