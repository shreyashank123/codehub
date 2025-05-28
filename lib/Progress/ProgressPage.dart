import 'package:codehub/Courses/Courses_Page.dart';
import 'package:codehub/Progress/reportPage.dart';
import 'package:codehub/Progress/wishlist.dart';
import 'package:codehub/notification_Section.dart';
import 'package:flutter/material.dart';
import '../HomePage/InitialPage.dart';
import '../ProfilePage/profile_page.dart';
import '../ProfilePage/myprofile.dart';
import 'mytaskPage.dart';

class ProgressPage extends StatefulWidget {
  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  int _currentIndex = 2; // Initialize the bottom navigation bar index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF1f6b8d),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello, Jackson Logan",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.white),
                onPressed: () {
                  // Action to be taken when the notification icon is pressed
                  // For example, navigate to a notifications page or show a dialog
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationPage()));
                },
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Monday, 7 Oct 2024",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top stats section
            Container(
              color: Color(0xFF1f6b8d),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatCard("08", "Tasks Pending"),
                  _buildStatCard("15", "Tasks In Progress"),
                  _buildStatCard("29", "Tasks Completed"),
                ],
              ),
            ),
            // The rest of the page (white section)
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  // First row of cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to My Task page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyTaskPage()), // Replace with your My Task page
                          );
                        },
                        child: _buildDashboardCard(
                          title: "My Task",
                          subtitle: "54 new tasks created",
                          icon: Icons.task,
                          color: Colors.blue.shade100,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to My Task page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WishlistPage()), // Replace with your My Task page
                          );
                        },
                        child: _buildDashboardCard(
                          title: "Wishlist Course",
                          subtitle: "You have 4 courses",
                          icon: Icons.favorite,
                          color: Colors.teal.shade100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Second row of cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to My Task page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ReportPage()), // Replace with your My Task page
                          );
                        },
                        child: _buildDashboardCard(
                          title: "Report",
                          subtitle: "See all your report",
                          icon: Icons.report,
                          color: Colors.blue.shade100,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to My Task page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyProfilePage()), // Replace with your My Task page
                          );
                        },
                        child: _buildDashboardCard(
                          title: "My Profile",
                          subtitle: "See the progress",
                          icon: Icons.person,
                          color: Colors.teal.shade100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Create Ticket button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CoursesPage()), // Replace with your My Task page
                      );
                      // Action when button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor:
                          Color(0xFF1f6b8d), // Text (foreground) color
                      padding: EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 12), // Padding inside the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(25), // Rounded corners
                      ),
                      elevation: 5, // Shadow effect
                    ),
                    child: Text(
                      'Back To Courses',
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
            // Navigate to courses page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CoursesPage()),
            );
          } else if (index == 2) {
            // Navigate to Progress page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProgressPage()),
            );
          } else if (index == 3) {
            // Navigate to Profile page
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

  Widget _buildStatCard(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildDashboardCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      width: 180,
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Icon(icon, size: 36, color: Colors.black)),
            Spacer(),
            Center(
              child: Text(
                title,

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
            ),
          ],
        ),
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
