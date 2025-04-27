import 'package:flutter/material.dart';
import 'package:information_student/screen/login.dart';
import 'package:information_student/screen/profile.dart';
import 'package:information_student/screen/setting.dart';
import 'package:information_student/widgets/student_list.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final String userName = "Sereyodam"; // Updated user name
  final String profileImageUrl =
      "https://avatars.githubusercontent.com/u/193658066?v=4"; // Replace with your profile image URL

  bool isDarkMode = false; // Track the theme mode

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light, // Toggle theme
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Informations',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
          ),
          backgroundColor: const Color.fromARGB(255, 161, 27, 238),
          leading: Builder(
            builder:
                (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer(); // Opens the drawer
                  },
                ),
          ),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode; // Toggle the theme mode
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Action when add button is pressed
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 27, 238),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50, // Adjusted size of the profile picture
                      backgroundImage: NetworkImage(profileImageUrl),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 10), // Adjusted height to a valid value
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                ),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  ); // Navigate to the Profile screen
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                ),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  ); // Navigate to the Settings screen
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                ),
                title: Text('About'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('About'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10), // Add spacing between lines
                            Text('Version: v0.001'),
                            SizedBox(height: 5), // Add spacing between lines
                            Text('Device: iPhone 13 Pro Max'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail, color: Colors.black),
                title: Text('Contact Us'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Contact Us'),
                        content: Text('Contact me on 098499494'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.black),
                title: Text('Log Out'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Log Out'),
                        content: Text('Are you sure you want to log out?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              ); // Navigate to the Login screen
                            },
                            child: Text('Yes'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        body: const StudentList(), // Display the list of students
      ),
    );
  }
}
