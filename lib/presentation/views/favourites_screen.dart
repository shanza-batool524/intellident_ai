import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/image_urls.dart';
import '../../core/routing/routers_name.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, String>> favouriteDoctors = [
    {'name': 'Dr. Ayesha', 'image': 'assets/images/onboarding_one.png'},
    {'name': 'Dr. Hamza', 'image': 'assets/images/onboarding_one.png'},
    // Add more dummy doctors
  ];

  final List<Map<String, String>> favouriteProducts = [
    {'name': 'Stethoscope', 'image': 'assets/images/onboarding_one.png'},
    {'name': 'Thermometer', 'image': 'assets/images/onboarding_one.png'},
    // Add more dummy products
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        // AppBar color
        title: Image.asset(
          ImagesUrls.logo,
          height: 40, // Adjust the logo height as needed
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Image.asset(
                ImagesUrls.notification,
                width: 30,
                height: 30,
              ),
              onPressed: () {
                Get.toNamed(RouteName.notificationScreen);
              },
            ),
          ),
        ],
        bottom: TabBar(

          labelStyle: AppTextStyles.font18.copyWith(color: AppColor.blue),
          unselectedLabelStyle: AppTextStyles.font18.copyWith(color: AppColor.blue),
          controller: _tabController,
          indicatorColor: AppColor.white,
          tabs: const [
            Tab(
              text: 'Doctors'),
            Tab(text: 'Products'),
          ],
        ),
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          _buildGrid(favouriteDoctors),
          _buildGrid(favouriteProducts),
        ],
      ),
    );
  }

  Widget _buildGrid(List<Map<String, String>> items) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    items[index]['image']!,
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
10.height,                Text(
                  items[index]['name']!,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
