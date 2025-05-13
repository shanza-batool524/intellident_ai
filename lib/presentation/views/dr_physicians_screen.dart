import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import 'package:intellident_ai/presentation/views/partners_screen.dart';

import '../../core/constants/app_colors.dart';

class DoctorsPhysiciansScreen extends StatelessWidget {
  final List<Map<String, String>> doctors = [
    {
      "name": "Dr. Fareeda Nikhat",
      "specialty": "Women's Health, Fetal Medicine",
      "hospital": "Latifa Hospital - Dubai",
      "image": 'assets/images/doctor.png', // Add image path here
    },
    {
      "name": "Dr. Ahmad Kamal Ansari",
      "specialty": "General Surgery",
      "hospital": "Rashid Hospital - Dubai",
      "image": 'assets/images/doctor.png', // Add image path here
    },
    {
      "name": "Dr. Aliya Ishaq",
      "specialty": "General Surgery",
      "hospital": "Dubai Hospital - Dubai",
      "image": 'assets/images/doctor.png', // Add image path here
    },
    {
      "name": "Dr. Avinash Hiremath",
      "specialty": "General Surgery",
      "hospital": "Al Jalila Hospital - Dubai",
      "image": 'assets/images/doctor.png', // Add image path here
    },
    {
      "name": "Dr. Eiman ElGammal",
      "specialty": "Women's Health, Fetal Medicine",
      "hospital": "Latifa Hospital - Dubai",
      "image": 'assets/images/doctor.png', // Add image path here
    },
    {
      "name": "Dr. Asim Bushra Elthaher",
      "specialty": "General Surgery",
      "hospital": "Rashid Hospital - Sharjah",
      "image": 'assets/images/doctor.png', // Add image path here
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary,
        // AppBar color
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
              width: 30,
              height: 30,
            ),
            onPressed: () {
              // Notification action
            },
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar
            10.height,
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Doctors...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // filled: true,
                // fillColor: Colors.grey[200],
              ),
            ),
            20.height,
            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              // Padding inside the container
              decoration: BoxDecoration(
                color: Colors.blue[100], // Light blue background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '1044', // Number of doctors/physicians
                    style: TextStyle(
                      fontSize: 32, // Larger font size for the number
                      fontWeight: FontWeight.bold, // Bold text
                      color: Colors.black, // Text color
                    ),
                  ),
                  SizedBox(height: 4), // Space between number and description
                  Text(
                    'Doctors & Physicians found', // Description text
                    style: TextStyle(
                      fontSize: 16, // Smaller font size for the description
                      color: Colors.black, // Text color
                    ),
                  ),
                ],
              ),
            ),
            20.height,
            // List of Doctors
            Expanded(
              child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return Card(
                    color: AppColor.white,
                    elevation: 0,
                    // Remove the elevation and shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ), // Add black border
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(doctor['image']!),
                        // Doctor's image
                        radius: 30, // Adjust the size of the image
                      ),
                      title: Text(
                        doctor['name']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctor['specialty']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            doctor['hospital']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>PartnersScreen()));                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
