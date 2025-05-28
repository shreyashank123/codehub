import 'package:flutter/material.dart';

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: Text('Help & Support',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Help & Support',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // FAQ Section
            Text(
              'Frequently Asked Questions (FAQ)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ExpansionTile(
              title: Text('How do I enroll in a course?'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'To enroll in a course, navigate to the "Courses" section, select the course you wish to enroll in, '
                        'and click on the "Enroll" button. You can start learning immediately after enrollment.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('How can I reset my password?'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'You can reset your password by going to the login page and clicking on "Forgot Password." '
                        'An email will be sent to you with instructions to reset your password.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('How can I contact a tutor?'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'You can contact a tutor by navigating to the "Tutors" section in the app and selecting a tutor. '
                        'You can send them a message or schedule a session directly through the platform.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Contact Us Section
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('If you need further assistance, feel free to contact us:'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.email, color: Color(0xFF1f6b8d)),
                        SizedBox(width: 10),
                        Text('Email: support@codehub.com'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Color(0xFF1f6b8d)),
                        SizedBox(width: 10),
                        Text('Phone: +1 (123) 456-7890'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.message, color: Color(0xFF1f6b8d)),
                        SizedBox(width: 10),
                        Text('Live Chat: Available 24/7 in the app'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Or reach us on social media:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.facebook, color: Color(0xFF1f6b8d)),
                        SizedBox(width: 10),
                        Text('Facebook'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.message_outlined, color: Color(0xFF1f6b8d)),
                        SizedBox(width: 10),
                        Text('Twitter'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.photo, color: Color(0xFF1f6b8d)),
                        SizedBox(width: 10),
                        Text('Instagram'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Submit a Query Section
            Text(
              'Submit a Query',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Your Query',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Action when button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12), // Padding inside the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // Rounded corners
                        ),
                        elevation: 5, // Shadow effect
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
