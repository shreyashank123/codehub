import 'package:flutter/material.dart';

class MyTaskPage extends StatelessWidget {
  final List<Task> tasks = [
    Task(name: 'Complete Flutter Basics', description: 'Watch introductory videos on Flutter basics.', status: 'In Progress'),
    Task(name: 'Solve Dart Quiz', description: 'Take the quiz on Dart fundamentals.', status: 'Pending'),
    Task(name: 'Submit SQL Assignment', description: 'Upload the SQL assignment for review.', status: 'Completed'),
    Task(name: 'React Course', description: 'Finish React state management lessons.', status: 'In Progress'),
    Task(name: 'Figma Design', description: 'Design the user interface in Figma.', status: 'Pending'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: Text('My Learning Tasks',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  task.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(task.description),
                trailing: _buildStatusChip(task.status),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    switch (status) {
      case 'Completed':
        color = Colors.green;
        break;
      case 'In Progress':
        color = Colors.orange;
        break;
      case 'Pending':
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
    }
    return Chip(
      label: Text(
        status,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
    );
  }
}

class Task {
  final String name;
  final String description;
  final String status;

  Task({required this.name, required this.description, required this.status});
}
