import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  final List<Report> reports = [
    Report(courseName: 'Flutter Development', progress: 85, quizzesTaken: 5, assignmentsSubmitted: 3),
    Report(courseName: 'React Native', progress: 60, quizzesTaken: 3, assignmentsSubmitted: 2),
    Report(courseName: 'Dart Programming', progress: 90, quizzesTaken: 4, assignmentsSubmitted: 4),
    Report(courseName: 'SQL Mastery', progress: 40, quizzesTaken: 1, assignmentsSubmitted: 1),
    Report(courseName: 'UI/UX with Figma', progress: 70, quizzesTaken: 2, assignmentsSubmitted: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: Text('My Learning Report',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: ListView.builder(
        itemCount: reports.length,
        itemBuilder: (context, index) {
          final report = reports[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      report.courseName,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStat('Progress', '${report.progress}%', Colors.blue),
                        _buildStat('Quizzes', report.quizzesTaken.toString(), Colors.orange),
                        _buildStat('Assignments', report.assignmentsSubmitted.toString(), Colors.green),
                      ],
                    ),
                    SizedBox(height: 15),
                    // Progress bar for course completion
                    LinearProgressIndicator(
                      value: report.progress / 100,
                      color: Colors.blue,
                      backgroundColor: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStat(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: color),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}

class Report {
  final String courseName;
  final int progress; // Progress in percentage
  final int quizzesTaken;
  final int assignmentsSubmitted;

  Report({
    required this.courseName,
    required this.progress,
    required this.quizzesTaken,
    required this.assignmentsSubmitted,
  });
}
