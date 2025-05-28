import 'package:codehub/Register_page.dart';
import 'package:flutter/material.dart';
import 'dart:async'; // Import for Timer

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    // Set up a timer to automatically scroll every 4 seconds
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      if (_currentPage < 1) {
        _currentPage++;
        _pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInSine,
        );
      }
      setState(() {}); // Update the current page
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1f6b8d),
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0xFF1f6b8d),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage =
                      index; // Update the current page on manual scroll
                });
              },
              children: [
                _buildPage(
                  "https://i.pinimg.com/originals/b9/49/c8/b949c86a570df07a7440abe39405834c.gif",
                  "Explore Your Interest",
                  "Fuel your curiosity\n and build the future with code!",
                ),
                _buildPage(
                  "https://i.pinimg.com/originals/b9/49/c8/b949c86a570df07a7440abe39405834c.gif",
                  "Learn With Fun",
                  "Code your way to creativity\nwhere learning meets excitement!",
                  showButton: true, // Indicate to show the button on this page
                ),
              ],
            ),
          ),
          _buildPageIndicator(),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath, String title, String description,
      {bool showButton = false}) {
    return Column(
      children: [
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imagePath),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        SizedBox(height: 30),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        if (showButton) // Show button only on the second page
          SizedBox(height: 30), // Space before the button
        if (showButton)
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      11.0), // Makes the button rectangular
                ),
              ),
              onPressed: () {
                // Handle Get Started button tap
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RegisterPage())); // Change '/home' to your target route
              },
              child: Text('Let\'s go',
                  style: TextStyle(
                      color: Color(0xFF1f6b8d),
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ),
          ),
      ],
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == 0 ? Colors.white : Colors.grey,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == 1 ? Colors.white : Colors.grey,
          ),
        ),
      ],
    );
  }
}
