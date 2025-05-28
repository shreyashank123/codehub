import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const AndroidDesignCourseApp());
}

class AndroidDesignCourseApp extends StatelessWidget {
  const AndroidDesignCourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android Design Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CourseDetailsPage(),
    );
  }
}

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  bool _isAdvancedSkillsExpanded = false;
  final TextEditingController _reviewController = TextEditingController();
  double _newReviewRating = 0;
  final List<Map<String, dynamic>> _userReviews = [
    {'name': 'John Doe', 'rating': 4.5, 'review': 'Great course! Very informative and well-structured.'},
    {'name': 'Jane Smith', 'rating': 5.0, 'review': 'Excellent course. Highly recommended!'},
  ];

  void _submitReview() {
    if (_reviewController.text.isNotEmpty && _newReviewRating > 0) {
      setState(() {
        _userReviews.add({
          'name': 'New User',
          'rating': _newReviewRating,
          'review': _reviewController.text,
        });
        _reviewController.clear();
        _newReviewRating = 0;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Review Submitted!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a review and rating')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Colors.white),
        backgroundColor: Color(0xFF1f6b8d),
        title: const Text('Course Details',style: TextStyle(color: Colors.white),),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://bbst1.badabusiness.com/wp-content/uploads/2021/04/Texila-online-course.jpeg', // Replace with your image URL
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Android Development Course Detail',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Text('20h 10m · 40 lessons · ', style: TextStyle(fontSize: 16)),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Text('5.0 (2560)', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'About Course',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'These lessons can add flair to your conversation and help you express ideas or feelings more vividly. However, it’s important to use them appropriately.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const TabBar(
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'Lessons'),
                            Tab(text: 'Description'),
                            Tab(text: 'Reviews'),
                          ],
                        ),
                        SizedBox(
                          height: 500,
                          child: TabBarView(
                            children: [
                              _buildLessonsTab(),
                              _buildDescriptionTab(),
                              _buildReviewsTab(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle enroll action
                    },
                    // ignore: sort_child_properties_last
                    child: const Text('Enroll Now'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 16),
                  IconButton(
                    icon: const Icon(Icons.bookmark_border, size: 28),
                    onPressed: () {
                      // Handle save action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonsTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          title: Text('Intro Product Design'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Introduction Product Design (02m 35s)'),
              Text('Assignment - PDF'),
            ],
          ),
        ),
        ExpansionTile(
          title: const Text('Advanced Product Design Skills'),
          trailing: Icon(_isAdvancedSkillsExpanded ? Icons.expand_less : Icons.expand_more),
          onExpansionChanged: (expanded) {
            setState(() {
              _isAdvancedSkillsExpanded = expanded;
            });
          },
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Advanced lessons and skills in product design.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescriptionTab() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'This course covers the essential topics in product design, including ideation, prototyping, and user experience design. You will learn to create intuitive and user-friendly designs \n         =>  This course covers the essential topics in product design .',
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildReviewsTab() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: _userReviews.map((review) {
              return ListTile(
                leading: const Icon(Icons.person, size: 40),
                title: Text(review['name']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List.generate(
                        5,
                            (index) => Icon(
                          index < review['rating'].round() ? Icons.star : Icons.star_border,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(review['review']),
                  ],
                ),
              );
            }).toList(),
          ),
          const Divider(),
          const SizedBox(height: 8),
          const Text('Write your Review:', style: TextStyle(fontSize: 18)),
          TextFormField(
            controller: _reviewController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your review',
            ),
          ),
          const SizedBox(height: 8),
          RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (rating) {
              setState(() {
                _newReviewRating = rating;
              });
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _submitReview,
            // ignore: sort_child_properties_last
            child: const Text('Submit Review'),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // Rounded corners
                ),
                elevation: 3, // Shadow effect
              ),
            ),
        ],
      ),
    );
  }
}