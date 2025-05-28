import 'package:codehub/ProfilePage/UpdateProfile.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  final List<Map<String, String>> completedCourses = [
    {
      'title': 'Flutter & Dart for Beginners',
      'duration': '20 hours',
      'dateCompleted': 'September 2024',
    },
    {
      'title': 'Advanced UI/UX Design',
      'duration': '15 hours',
      'dateCompleted': 'August 2024',
    },
    {
      'title': 'SQL for Data Management',
      'duration': '10 hours',
      'dateCompleted': 'July 2024',
    },
    {
      'title': 'Project Management Essentials',
      'duration': '8 hours',
      'dateCompleted': 'June 2024',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Colors.white),
        backgroundColor: Color(0xFF1f6b8d),
        title: Text('Profile',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Avatar
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/1.jpg', // Replace with actual image
                ),
              ),
              SizedBox(height: 20),

              // Name of the user
              Text(
                'Jackson Logan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              // Short About Description
              Text(
                'Passionate about mobile app development,'
                    ' currently learning Flutter and Dart to create beautiful,'
                    ' high-performance applications. '
                    'With a strong foundation in programming concepts',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 30),

              // About Section
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'I am currently pursuing an BSc.IT from Cimage College. '
                          'I have a keen interest in app development, especially in Flutter, and I love '
                          'building apps that make a difference. I am passionate about education, technology, '
                          'and empowering others through learning platforms.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Completed Courses Section
              Text(
                'Completed Courses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // List of Completed Courses
              Column(
                children: completedCourses.map((course) {
                  return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          // Checkbox Icon
                          Icon(
                            Icons.check_circle,
                            color: Color(0xFF1f6b8d), // Change color as desired
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  course['title']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Duration: ${course['duration']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  'Completed: ${course['dateCompleted']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),

              SizedBox(height: 40),

              // Update Profile Button
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfilePage()));
                  // Define what happens when the button is pressed
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Update Profile button pressed!')),
                  );
                },
                icon: Icon(Icons.edit, color: Colors.white),
                label: Text('Update Profile',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12), // Padding inside the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  elevation: 5, // Shadow effect
                ),

                ),
            ],
          ),
        ),
      ),
    );
  }
}
