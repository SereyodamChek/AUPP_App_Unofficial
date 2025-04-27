import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false; // Track the dark mode state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light, // Toggle theme
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: const Color.fromARGB(255, 161, 27, 238),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the home screen
            },
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text('Dark Mode'),
              trailing: Switch(
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value; // Toggle dark mode
                  });
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Switch(
                value: true, // Replace with your notification state
                onChanged: (value) {
                  // Handle notification toggle
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              onTap: () {
                // Handle language selection
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy Policy'),
              onTap: () {
                // Navigate to Privacy Policy screen or show dialog
              },
            ),
          ],
        ),
      ),
    );
  }
}
