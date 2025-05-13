import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class DoctorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.blue,
        ),
        centerTitle: true,
        backgroundColor: AppColor.white, // AppBar color
        title: const Text('Dr. Fareeda Nikhat',style: TextStyle(color: AppColor.blue),),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border,color: AppColor.blue),
            onPressed: () {
              // Handle favorite icon action
            },
          ),    IconButton(
            icon: const Icon(Icons.share,color: AppColor.blue),
            onPressed: () {
              // Handle favorite icon action
            },
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.white,
      ),
      body: SingleChildScrollView( // Wrap the body in a scroll view
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 80,  // Adjust size of the circle
              backgroundImage: const AssetImage('assets/images/doctor.png'), // Replace with the doctor's image path
            ),
            const SizedBox(height: 16),

            // Doctor Info Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,  // White background
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey.withOpacity(0.2))], // Soft shadow
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Doctor's Name
                  const Text(
                    'Dr. Fareeda Nikhat',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Women\'s Health, Fetal Medicine',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Latifa Hospital - Dubai',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Contact Info Section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],  // Light grey background
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey.withOpacity(0.2))], // Soft shadow
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Contact number and email row
                  Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.blue),
                      const SizedBox(width: 8),
                      const Text('04 6545434'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.email, color: Colors.blue),
                      const SizedBox(width: 8),
                      const Text('fnikhat@latifahosp.ae'),
                    ],
                  ),
                  const Divider(height: 30, color: Colors.black26),

                  // Languages Known section
                  const Text(
                    'Languages Known',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Arabic, Hindi, Urdu, English'),
                  const Divider(height: 30, color: Colors.black26),

                  // Location section
                  const Text(
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Dubai, UAE'),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
