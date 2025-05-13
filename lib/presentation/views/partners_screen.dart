import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import the carousel_slider package
import 'package:intellident_ai/core/utils/extension.dart';
import '../../core/constants/app_colors.dart';

class PartnersScreen extends StatelessWidget {
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle tap on item 1
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle tap on item 2
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          20.height,
          const Text(
            "Products",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900,
              color: AppColor.blue,
            ),
          ),
          20.height,
          // CarouselSlider
          CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                // Set the border radius here
                child: Image.asset(
                  'assets/images/home_scan.png', // First image
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                // Set the border radius here
                child: Image.asset(
                  'assets/images/home_scan2.png', // Second image
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                // Set the border radius here
                child: Image.asset(
                  'assets/images/home_scan2.png', // Third image
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              scrollPhysics: const BouncingScrollPhysics(),
            ),
          ),
          20.height,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/partners/${index + 1}.png', // Grid images
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
