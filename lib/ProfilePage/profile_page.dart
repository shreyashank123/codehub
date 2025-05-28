import 'package:codehub/HomePage/InitialPage.dart';
import 'package:codehub/ProfilePage/Help_&_Support_section.dart';
import 'package:codehub/ProfilePage/Privacy_section.dart';
import 'package:codehub/ProfilePage/Setting.dart';
import 'package:codehub/ProfilePage/myprofile.dart';
import 'package:flutter/material.dart';
import '../Progress/ProgressPage.dart';
import '../notification_Section.dart'; // Import your notification page
import '../Courses/Courses_Page.dart'; // Import your courses page

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 3; // Set index to 3, as Profile is the 4th item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF1f6b8d),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
            child: Row(
              children: [
                // Profile picture in the app bar
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/men/1.jpg"), // Random image URL
                ),
                SizedBox(width: 16),
                // Name and other details in the app bar
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Jackson Logan", // User's name
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Level: Intermediate", // Any other info
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),

            // Horizontal List of Badges
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildBadge('Beginner', Icons.star),
                  _buildBadge('Intermediate', Icons.thumb_up),
                  _buildBadge('Expert', Icons.school),
                ],
              ),
            ),

            SizedBox(height: 20),

            // List of settings
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationPage()));
                      // Navigate to notifications section
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Privacy'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPage()));

                      // Navigate to privacy section
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help & Support'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpSupportPage()));

                      // Navigate to help section
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to settings section
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage()));

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF1f6b8d),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Initialpage()),
            );
            // Navigate to InitialPage when the "Home" icon is tapped

          } else if (index == 1) {
            // Navigate to CoursesPage when the "Courses" icon is tapped
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CoursesPage()),
            );
          } else if (index == 2) {
            // Navigate to CoursesPage when the "Courses" icon is tapped
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProgressPage()),
            );
          } else if (index == 3) {
            // Stay on ProfilePage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyProfilePage()),
            );
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

  Widget _buildBadge(String title, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
