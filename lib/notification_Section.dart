import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // List of notifications
  List<String> notifications = [
    'New course available: Learn Python!',
    'Java tutorial updated with new examples.',
    'Your progress: 50% complete on Flutter course.',
    'You have a new message from your mentor.',
    'Complete your SQL quiz to earn a badge!',
    'Reminder: Watch the latest video on Dart basics.',
    'Your certification course deadline is in 3 days.',
    'Practice problem: Solve this recursion problem in Java.',
    'Join the live webinar on mobile app development.',
    'New project assigned: Build a responsive UI in Flutter.',
  ];

  // Boolean list to keep track of read notifications
  late List<bool> readStatus;

  @override
  void initState() {
    super.initState();
    // Initialize all notifications as unread (false)
    readStatus = List<bool>.filled(notifications.length, false);
  }

  // Function to mark all notifications as read
  void _markAllAsRead() {
    setState(() {
      readStatus = List<bool>.filled(notifications.length, true);
    });
  }

  // Function to delete a notification
  void _deleteNotification(int index) {
    setState(() {
      notifications.removeAt(index);
      readStatus.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: notifications.isEmpty
          ? Center(child: Text('No notifications'))
          : ListView.builder(
              itemCount: notifications.length + 1, // +1 for "Mark all as read"
              itemBuilder: (context, index) {
                // First item is "Mark all as read"
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: _markAllAsRead,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        color: Color(0xFF1f6b8d),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.done_all, color: Colors.lightBlue),
                            SizedBox(width: 8.0),
                            Text(
                              'Mark all as read',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }

                // Notifications start from index 1
                final notificationIndex = index - 1;

                return Dismissible(
                  key: Key(notifications[notificationIndex]),
                  background: Container(
                    color: Colors.red[600],
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (direction) {
                    _deleteNotification(notificationIndex);
                  },
                  child: Card(
                    color: readStatus[notificationIndex]
                        ? Colors.grey[300]
                        : Color(0xFF62a7c8), // Change color if marked as read
                    margin: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: readStatus[notificationIndex]
                            ? Color(0xFF1f6b8d)
                            : Colors.white,
                      ),
                      title: Text(notifications[notificationIndex]),
                      subtitle: Text('Just now'),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
