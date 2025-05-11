import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';
import '../dashboard/dashboard_screen.dart';
import '../profile/profile_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  final List<Map<String, String>> _icons = [
    {"selected": "assets/icons/home.png", "unselected": "assets/sicons/home.png"},
    {"selected": "assets/icons/activity_2.png", "unselected": "assets/sicons/activity.png"},
    {"selected": "assets/icons/Camera.png", "unselected": "assets/sicons/camera.png"},
    {"selected": "assets/icons/Profile.png", "unselected": "assets/sicons/profile.png"},
  ];

  final List<Widget> _screens = [
    const DashboardScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: _screens[_selectedIndex],
      floatingActionButton: Container(
        width: 70.w,
        height: 70.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [AppColor.secondary, AppColor.tertiary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x448A6FE7),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Image.asset("assets/icons/search.png"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 80.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_icons.length, (index) {
            bool isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () => _onItemTapped(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.h),
                  Image.asset(
                    isSelected
                        ? _icons[index]["unselected"]!  // Show selected icon
                        : _icons[index]["selected"]!,
                    width: 24.w,
                    height: 24.h,
// Show unselected icon
                  ),
                  SizedBox(height: 5.h),
                  if (isSelected)
                    Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Color(0xFF9DCEFF),
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
