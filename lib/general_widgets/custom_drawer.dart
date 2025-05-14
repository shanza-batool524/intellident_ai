import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/utils/extension.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 50,  // Profile image size
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
10.height,                Text(
                  "Shanza Batool",  // Name
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   "jbrett@gmail.com",  // Email
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 14.sp,
                //   ),
                // ),
              ],
            ),
          ),

          // Drawer items
          ListTile(
            leading: const Icon(Icons.question_answer, color: Colors.blue),
            title: const Text("My Answers"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blue),
            title: const Text("My Data Vault"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blue),
            title: const Text("My Profile"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blue),
            title: const Text("Account Settings"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blue),
            title: const Text("About the App"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.blue),
            title: const Text("Share App"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback, color: Colors.blue),
            title: const Text("Feedback"),
            onTap: () {
              // Add your navigation logic here
            },
          ),
          const Divider(),  // Divider between options and logout

          // Logout Section
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Logout"),
            onTap: () {
              // Add your logout logic here
            },
          ),
        ],
      ),
    );
  }
}

