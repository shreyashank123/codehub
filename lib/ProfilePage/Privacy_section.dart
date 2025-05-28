import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: Text('Privacy Policy',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ExpansionTile(
              title: Text(
                'Introduction',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'We value your privacy and are committed to protecting your personal information. '
                        'This Privacy Policy outlines how we collect, use, and protect your data when you use our codeHUB app.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Information We Collect',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'When you use our app, we may collect the following types of information:\n'
                        '1. Personal Information: Name, email address, profile picture, etc.\n'
                        '2. Usage Data: Information about how you interact with the app, such as the courses you enroll in, '
                        'your learning progress, and time spent on the platform.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'How We Use Your Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'We use the information we collect to:\n'
                        '1. Provide and maintain the app\'s functionality.\n'
                        '2. Improve the learning experience by personalizing content and recommendations.\n'
                        '3. Communicate with you about updates, promotions, and other app-related information.\n'
                        '4. Analyze app usage to enhance our services and user experience.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Data Security',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'We take reasonable measures to protect your personal information from unauthorized access, '
                        'disclosure, alteration, or destruction. However, please be aware that no method of transmission over the internet '
                        'or method of electronic storage is 100% secure.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Third-Party Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Our app may include links to third-party websites or services that are not operated by us. '
                        'We are not responsible for the privacy practices of these third-party services.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Your Rights',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'You have the right to access, modify, or delete your personal information stored in our app. '
                        'If you wish to exercise these rights, please contact us at the support address provided in the app.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Changes to This Policy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'We may update this Privacy Policy from time to time. Any changes will be posted in the app, '
                        'and the effective date will be indicated at the top of the policy.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'If you have any questions or concerns about our Privacy Policy, feel free to contact us at support@codehub.com.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
