import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  final List<WishlistCourse> wishlistedCourses = [
    WishlistCourse(
      title: 'Complete Flutter Development',
      instructor: 'John Doe',
      imageUrl: 'assets/images/flutter_img.jpeg', // Placeholder image
    ),
    WishlistCourse(
      title: 'Mastering hacking',
      instructor: 'Jane Smith',
      imageUrl: 'assets/images/hacking.jpeg', // Placeholder image
    ),
    WishlistCourse(
      title: 'AWS for Beginners',
      instructor: 'Alex Johnson',
      imageUrl: 'assets/images/aws.png', // Placeholder image
    ),
    WishlistCourse(
      title: 'Advanced UI/UX with Figma',
      instructor: 'Emily Davis',
      imageUrl: 'assets/images/ui_design.jpeg', // Placeholder image
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: Text('My Wishlisted Courses',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: ListView.builder(
        itemCount: wishlistedCourses.length,
        itemBuilder: (context, index) {
          final course = wishlistedCourses[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Course Image
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(course.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    // Course Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Instructor: ${course.instructor}',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600),
                          ),
                          SizedBox(height: 8),
                          // Remove from wishlist button
                          ElevatedButton(
                            onPressed: () {
                              // Logic to remove course from wishlist
                            },
                            child: Text('Remove from Wishlist'),
                            
                          ),
                        ],
                      ),
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
}

class WishlistCourse {
  final String title;
  final String instructor;
  final String imageUrl;

  WishlistCourse({
    required this.title,
    required this.instructor,
    required this.imageUrl,
  });
}
