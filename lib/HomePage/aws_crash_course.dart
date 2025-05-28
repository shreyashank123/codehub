import 'package:flutter/material.dart';

class AWSCrashCoursePage extends StatelessWidget {
  const AWSCrashCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: const Text('AWS Crash Course',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF1f6b8d), // Your primary color
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildLectureItem(
            title: 'Introduction to AWS',
            duration: '10 mins',
          ),
          _buildLectureItem(
            title: 'AWS Management Console',
            duration: '15 mins',
          ),
          _buildLectureItem(
            title: 'S3: Storage Services',
            duration: '20 mins',
          ),
          _buildLectureItem(
            title: 'EC2: Compute Services',
            duration: '25 mins',
          ),
          _buildLectureItem(
            title: 'RDS: Database Services',
            duration: '30 mins',
          ),
          _buildLectureItem(
            title: 'Lambda: Serverless Computing',
            duration: '18 mins',
          ),
          _buildLectureItem(
            title: 'IAM: Identity and Access Management',
            duration: '22 mins',
          ),
          _buildLectureItem(
            title: 'AWS Pricing and Support',
            duration: '12 mins',
          ),
        ],
      ),
    );
  }

  Widget _buildLectureItem({required String title, required String duration}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        trailing: Text(
          duration,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        onTap: () {
          // Handle lecture tap here (e.g., navigate to lecture details)
          print('Tapped on $title');
        },
      ),
    );
  }
}
