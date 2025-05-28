import 'package:flutter/material.dart';

class UIUXCrashCourse extends StatelessWidget {
  // Sample data for the list of lectures
  final List<Map<String, String>> lectures = [
    {"title": "Introduction to UI/UX", "duration": "5 min"},
    {"title": "Understanding User Interface", "duration": "10 min"},
    {"title": "User Experience Basics", "duration": "8 min"},
    {"title": "UI Design Tools Overview", "duration": "15 min"},
    {"title": "Wireframing and Prototyping", "duration": "12 min"},
    {"title": "Typography in Design", "duration": "7 min"},
    {"title": "Color Theory for UI", "duration": "9 min"},
    {"title": "Designing for Accessibility", "duration": "10 min"},
    {"title": "Building User Personas", "duration": "6 min"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: const Text("UI/UX Crash Course",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF1f6b8d), // Your primary color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: lectures.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.play_circle_fill, color: Color(0xFF1f6b8d)),
                title: Text(lectures[index]['title']!),
                subtitle: Text("Duration: ${lectures[index]['duration']}"),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                onTap: () {
                  // Action when a lecture is tapped
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
