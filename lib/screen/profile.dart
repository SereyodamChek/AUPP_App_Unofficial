import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 161, 27, 238),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/193658066?v=4", // Replace with your profile image URL
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: Sereyodam',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:
                    isDarkMode
                        ? Colors.white
                        : Colors.black, // Adjust text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: sereyodam@example.com', // Replace with actual email
              style: TextStyle(
                fontSize: 16,
                color:
                    isDarkMode
                        ? Colors.white70
                        : Colors.black87, // Adjust text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: 098499494', // Replace with actual phone number
              style: TextStyle(
                fontSize: 16,
                color:
                    isDarkMode
                        ? Colors.white70
                        : Colors.black87, // Adjust text color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add any action for editing the profile
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 161, 27, 238),
              ),
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
