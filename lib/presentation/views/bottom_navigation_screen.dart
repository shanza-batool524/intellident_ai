import 'package:flutter/material.dart';
import 'package:intellident_ai/presentation/views/dashboard/dashboard_screen.dart';
import 'package:intellident_ai/presentation/views/doctor/doctor_screen.dart';
import 'package:intellident_ai/presentation/views/partners_screen.dart';

import '../../core/constants/app_colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    const DashboardScreen(),
    const DoctorScreen(),
    const DashboardScreen(),
    PartnersScreen(),
    const PartnersScreen(),
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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.blue,
        selectedItemColor: AppColor.white,
        unselectedItemColor: Colors.white60,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.document_scanner), label: 'Scan'),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Products'),
        ],
      ),
    );
  }
}
