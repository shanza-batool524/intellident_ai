import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';


class HomeScreen extends StatelessWidget {
  // List of image paths for the grid items
  final List<String> imagePaths = [
    'assets/partners/1.png',
    'assets/partners/2.png',
    'assets/partners/3.png',
    'assets/partners/4.png',
    'assets/partners/5.png',
    'assets/partners/6.png',
    'assets/partners/7.png',
    'assets/partners/8.png',
    'assets/partners/1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary, // AppBar color
        title: Image.asset(
          'assets/logo/intellident_logo.png',
          // Replace with your logo asset path
          height: 40, // Adjust the logo height as needed
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/notification_icon.png',
              // Replace with your asset image path
              width: 30, // Set width of the icon
              height: 30, // Set height of the icon
            ),
            onPressed: () {
              // Notification action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle tap on item 1
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle tap on item 2
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
            crossAxisSpacing: 8, // Space between columns
            mainAxisSpacing: 8, // Space between rows
          ),
          itemCount: imagePaths.length,
          // Set the number of items based on the image list length
          itemBuilder: (context, index) {
            return Card(
              elevation: 4, // Card shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePaths[index], // Use the image path from the list
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
