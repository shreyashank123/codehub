import 'package:codehub/HomePage/WebDevCourse.dart';
import 'package:codehub/logoutPage.dart';
import 'package:codehub/HomePage/ui_ux_course.dart';
import 'package:codehub/ProfilePage/Setting.dart';
import 'package:codehub/ProfilePage/myprofile.dart';
import 'package:codehub/Register_page.dart';
import 'package:flutter/material.dart';
import '../Courses/Courses_Page.dart';
import '../ProfilePage/Help_&_Support_section.dart';
import '../ProfilePage/Privacy_section.dart';
import '../ProfilePage/profile_page.dart';
import '../Progress/ProgressPage.dart';
import '../notification_Section.dart';
import 'AndroidDev/androidDevCourse.dart';
import 'aws_crash_course.dart'; // Import the AndroidDevelopmentCoursePage

class Initialpage extends StatefulWidget {
  @override
  _InitialpageState createState() => _InitialpageState();
}

class _InitialpageState extends State<Initialpage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF1f6b8d),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/men/1.jpg'),
                      radius: 30,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Jackson Logan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'An Enthusiastic Learner',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.notifications, color: Color(0xFF1f6b8d)),
                title: Text('Notifications'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Color(0xFF1f6b8d)),
                title: Text('Privacy'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrivacyPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.help, color: Color(0xFF1f6b8d)),
                title: Text('Help & Support'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpSupportPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Color(0xFF1f6b8d)),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SettingsPage()),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.logout,color: Color(0xFF1f6b8d),),
                title: Text("LogOut"),

                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Logoutpage()),
                  );
                },
              )
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF1f6b8d),
          elevation: 2,
          title: Row(
            children: [
              // Removed the back button and added Drawer Icon
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/1.jpg'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Jackson Logan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
            ),
          ],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color(0xFF1f6b8d)),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What do you want to search?',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Popular Courses',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AndroidDevelopmentCoursePage()),
                  );
                },
                child: CourseCard(
                  title: 'Android Development Course',
                  instructor: 'Emily Hazel',
                  imageUrl: 'assets/images/android_img.jpeg',
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Webdevcourse()),
                  );
                },
                child: CourseCard(
                  title: 'Web Development Crash Course',
                  instructor: 'John Doe',
                  imageUrl: 'assets/images/web_dev.jpeg',
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UIUXCrashCourse()),
                  );
                },
                child: CourseCard(
                  title: 'UI/UX Design Course',
                  instructor: 'Alex Logan',
                  imageUrl: 'assets/images/ui_design.jpeg',
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AWSCrashCoursePage()),
                  );
                },
                child: CourseCard(
                  title: 'AWS Crash Course',
                  instructor: 'John Doe',
                  imageUrl: 'assets/images/aws.png',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'In Progress',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 400,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Webdevcourse()),
                            );
                          },
                          child: CourseProgressCard(
                            title: 'Web Development Crash',
                            lessons: '17/20 Lessons',
                            imageUrl: 'assets/images/web_dev.jpeg',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 400,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UIUXCrashCourse()),
                            );
                          },
                          child: CourseProgressCard(
                            title: 'Become A UI/UX Designer',
                            lessons: '15/24 Lessons',
                            imageUrl: 'assets/images/ui_design',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 400,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Webdevcourse()),
                            );
                          },
                          child: CourseProgressCard(
                            title: 'Web Development Crash',
                            lessons: '17/20 Lessons',
                            imageUrl: 'assets/images/web_dev.jpeg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF1f6b8d),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Initialpage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CoursesPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProgressPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfilePage()),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(Icons.home, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(Icons.book, 1),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(Icons.insert_chart_outlined, 2),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(Icons.person, 3),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedIcon(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isSelected ? 60 : 40,
      height: isSelected ? 60 : 40,
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xFF1f6b8d).withOpacity(0.2)
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: isSelected ? 30 : 24,
        color: isSelected ? Color(0xFF1f6b8d) : Colors.grey,
      ),
    );
  }
}


class CourseCard extends StatelessWidget {
  final String title;
  final String instructor;
  final String imageUrl;

  CourseCard({
    required this.title,
    required this.instructor,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(title),
        subtitle: Text(instructor),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class CourseProgressCard extends StatelessWidget {
  final String title;
  final String lessons;
  final String imageUrl;

  CourseProgressCard({
    required this.title,
    required this.lessons,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(title),
        subtitle: Text(lessons),
        trailing: Icon(Icons.play_circle_fill, color: Color(0xFF1f6b8d)),
      ),
    );
  }
}
