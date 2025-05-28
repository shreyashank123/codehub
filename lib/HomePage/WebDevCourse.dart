import 'package:flutter/material.dart';

class Webdevcourse extends StatelessWidget {
  const Webdevcourse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Development Crash Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebDevelopmentCourse(),
    );
  }
}

class WebDevelopmentCourse extends StatelessWidget {
  final List<Map<String, String>> lectures = [
    {'title': 'Introduction to Web Development', 'duration': '10:00 mins'},
    {'title': 'HTML Basics', 'duration': '15:30 mins'},
    {'title': 'CSS Fundamentals', 'duration': '18:00 mins'},
    {'title': 'Responsive Design', 'duration': '20:15 mins'},
    {'title': 'JavaScript Essentials', 'duration': '25:00 mins'},
    {'title': 'Working with APIs', 'duration': '30:45 mins'},
    {'title': 'Frontend Frameworks', 'duration': '35:00 mins'},
    {'title': 'Backend Basics', 'duration': '28:00 mins'},
    {'title': 'Deploying a Website', 'duration': '12:00 mins'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: const Text('Web Development Crash Course',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF1f6b8d),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: lectures.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: const Icon(Icons.play_circle_filled, color: Color(0xFF1f6b8d), size: 35),
              title: Text(
                lectures[index]['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                'Duration: ${lectures[index]['duration']}',
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: const Icon(Icons.chevron_right, color: Color(0xFF1f6b8d)),
              onTap: () {
                // Action when tapped
              },
            ),
          );
        },
      ),
    );
  }
}
