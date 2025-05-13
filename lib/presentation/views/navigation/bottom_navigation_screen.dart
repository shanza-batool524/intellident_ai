import 'package:flutter/material.dart';
import 'package:intellident_ai/presentation/views/dashboard/dashboard_screen.dart';
import 'package:intellident_ai/presentation/views/doctor/doctor_screen.dart';
import 'package:intellident_ai/presentation/views/partners_screen.dart';

import '../../../core/constants/app_colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  // List of pages for each navigation item
  List<Widget> _pages = [
    DashboardScreen(),
    DoctorScreen(),
    DashboardScreen(),
    PartnersScreen(),
    DashboardScreen(),
  ];

  // Update the index when an item is selected
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // To display all items in one line
        backgroundColor: AppColor.blue, // Background color of the navigation bar
        selectedItemColor: Colors.white, // Color for selected item
        unselectedItemColor: Colors.white60, // Color for unselected items
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Partners',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

