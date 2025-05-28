import 'package:flutter/material.dart';

class UpdateProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Colors.white),
        backgroundColor: Color(0xFF1f6b8d),
        title: Text("Update Profile",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture Section
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/1.jpg', // Replace with actual image
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        icon: Icon(Icons.edit, color: Color(0xFF1f6b8d)),
                        onPressed: () {
                          // Add logic to upload picture
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // User Information Fields
              Text("Name"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),
              SizedBox(height: 16),

              Text("Email"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(height: 16),

              Text("Phone Number"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your phone number",
                ),
              ),
              SizedBox(height: 16),

              Text("Password"),
              TextField(
                obscureText: true, // Hide password
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter new password",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      // Toggle password visibility
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Bio Section
              Text("Bio"),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tell us about yourself",
                ),
              ),
              SizedBox(height: 20),

              // Save Changes Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action when button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xFF1f6b8d),    // Text (foreground) color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                    ),
                    elevation: 3, // Shadow effect
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
