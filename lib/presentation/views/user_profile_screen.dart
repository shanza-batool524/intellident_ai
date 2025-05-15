import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import 'package:intellident_ai/presentation/views/authentication/login_screen.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/image_urls.dart';
import '../../core/routing/routers_name.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "Shanza Batool"; // Replace with actual data source later
    final String email = "shanza@example.com";

    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
              icon: const Icon(
                Icons.edit, size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
20.height,            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/doctor.png"),
                backgroundColor: Colors.transparent,
              ),
            ),
            10.height,
            Text(
              name,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(email, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
