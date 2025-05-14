import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import 'package:intellident_ai/general_widgets/custom_drawer.dart';
import 'package:intellident_ai/general_widgets/custom_field_components.dart';
import 'package:intellident_ai/presentation/views/doctor/dr_profile_screen.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/constants/image_urls.dart';
import '../../../general_widgets/dentist_card.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary,
        // AppBar color
        title: Text(
          "Doctors",
          style: AppTextStyles.font18.copyWith(color: AppColor.blue),
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
              },
            ),
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),

      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: CustomFieldComponents(
                hint: "Search for Dentists",
                controller: searchController,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(children: [const DentistCard(), 20.height]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
