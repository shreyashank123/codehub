import 'package:codehub/ProfilePage/Help_&_Support_section.dart';
import 'package:codehub/ProfilePage/about_us.dart';
import 'package:flutter/material.dart';

import 'Privacy_section.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _receiveEmailNotifications = true; // Set initial preference
  bool _receivePushNotifications = true; // Set initial preference

  void _toggleEmailNotifications(bool value) {
    setState(() {
      _receiveEmailNotifications = value;
    });

    // Show a SnackBar to notify the user
    final message = _receiveEmailNotifications
        ? 'Email notifications enabled'
        : 'Email notifications disabled';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2), // Duration for the SnackBar
      ),
    );
  }

  void _togglePushNotifications(bool value) {
    setState(() {
      _receivePushNotifications = value;
    });

    // Show a SnackBar to notify the user
    final message = _receivePushNotifications
        ? 'Push notifications enabled'
        : 'Push notifications disabled';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2), // Duration for the SnackBar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: Text('Settings',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),

            // Profile Settings
            Text(
              'Profile Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            // Add additional profile settings here
            // e.g., username, profile picture, etc.
            SizedBox(height: 20),

            // Notification Settings
            Text(
              'Notification Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SwitchListTile(
              title: Text('Receive Email Notifications'),
              value: _receiveEmailNotifications,
              onChanged: _toggleEmailNotifications,
              activeColor: Colors.green, // Color when the switch is on
              inactiveThumbColor: Colors.red, // Color of the thumb when off
              inactiveTrackColor: Colors.grey[200], // Color of the track when off
            ),
            SwitchListTile(
              title: Text('Receive Push Notifications'),
              value: _receivePushNotifications,
              onChanged: _togglePushNotifications,
              activeColor: Colors.green, // Color when the switch is on
              inactiveThumbColor: Colors.red, // Color of the thumb when off
              inactiveTrackColor: Colors.grey[200], // Color of the track when off
            ),

            // Other Settings
            SizedBox(height: 20),
            Text(
              'Other Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPage()));

                // Navigate to Privacy Policy page
              },
            ),
            ListTile(
              title: Text('Help & Support'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpSupportPage()));

                // Navigate to Help & Support page
              },
            ),
            ListTile(
              title: Text('About Us'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUsPage()));

                // Navigate to About Us page
              },
            ),
          ],
        ),
      ),
    );
  }
}
