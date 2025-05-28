import 'package:codehub/ProfilePage/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../HomePage/InitialPage.dart';
import '../Progress/ProgressPage.dart';
import 'ProductDesignCourseApp.dart';


class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  int _currentIndex = 1; // Set index to 1 for "Courses"

  void _onBottomNavTap(int index) {
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
    }else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyProfilePage()),
      );
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF1f6b8d),
        title: Row(
          children: [
            Icon(Icons.search, color: const Color(0xFF1f6b8d)),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What do you want to search?',
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.white),
            onPressed: () {
              // Add filter functionality here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Chip categories
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Chip(label: Text("Flutter")),
                Chip(label: Text("Android")),
                Chip(label: Text("Programming language")),
                Chip(label: Text("AWS")),
                Chip(label: Text("Ethical hacking")),
                Chip(label: Text("Photography")),
                Chip(label: Text("UI Design")),
                Chip(label: Text("Web Development")),
                Chip(label: Text("Python")),
                Chip(label: Text("Business")),
                Chip(label: Text("Marketing")),
              ],
            ),
          ),
          // Grid categories
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  CategoryCard('Android', 'assets/images/android_img.jpeg', context),
                  CategoryCard('Flutter', 'assets/images/flutter_img.jpeg', context),
                  CategoryCard('Ethical hacking', 'assets/images/hacking.jpeg', context),
                  CategoryCard('Cloud', 'assets/images/aws.png', context),
                  CategoryCard('Programming language', 'assets/images/program.jpeg', context),
                  CategoryCard('Photography', 'assets/images/photography.jpeg', context),
                  CategoryCard('UI Design', 'assets/images/ui_design.jpeg', context),
                  CategoryCard('Web Development', 'assets/images/web_dev.jpeg', context),
                  CategoryCard('Business', 'assets/images/business.jpeg', context),
                  CategoryCard('Marketing', 'assets/images/marketing.jpeg', context),
                  CategoryCard('Personal Development', 'assets/images/personal_dev.jpeg', context),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
      ),
    );
  }
}
Widget CategoryCard(String title, String imagePath, BuildContext context) {
  return GestureDetector(
    onTap: () {
      // Navigate to details page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AndroidDesignCourseApp(),
        ),
      );
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
class CourseDetailScreen extends StatefulWidget {
  final String title;

  const CourseDetailScreen({required this.title, super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}
class _CourseDetailScreenState extends State<CourseDetailScreen> {
  double _userRating = 0.0;

  // Function to open URLs
  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.white),),
        backgroundColor:  Color(0xFF1f6b8d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                // Handle video click
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Video tapped! Play video here."),
                        const SizedBox(height: 20),
                        Image.asset(
                          'assets/images/thumbnail.jpeg', // Display video thumbnail
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Course Video",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/thumbnail.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.play_circle_fill,
                        size: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Handle notes click and open a link
                _launchURL('https://example.com/notes');
              },
              child: const Text(
                "Notes",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                _launchURL('https://example.com/notes'); // Clickable notes
              },
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Click here to open course notes.",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Reviews",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Column(
              children: [
                RatingBar.builder(
                  initialRating: _userRating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _userRating = rating;
                    });
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("You gave a rating of $rating stars!"),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Your Rating: $_userRating",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF1f6b8d),
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: _buildAnimatedIcon(Icons.home, 0, currentIndex),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildAnimatedIcon(Icons.book, 1, currentIndex),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: _buildAnimatedIcon(Icons.insert_chart_outlined, 2, currentIndex),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: _buildAnimatedIcon(Icons.person, 3, currentIndex),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget _buildAnimatedIcon(IconData icon, int index, int currentIndex) {
    bool isSelected = currentIndex == index;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isSelected ? 60 : 40,
      height: isSelected ? 60 : 40,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFF1f6b8d).withOpacity(0.2)
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: isSelected ? 30 : 24,
        color: isSelected ? const Color(0xFF1f6b8d) : Colors.grey,
      ),
    );
  }
}

