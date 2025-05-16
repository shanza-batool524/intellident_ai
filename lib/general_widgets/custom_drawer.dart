import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import '../core/constants/app_colors.dart';
import '../core/routing/routers_name.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedStars = 0;

  final List<Map<String, dynamic>> socialMedia = [
    {'icon': Icons.facebook, 'label': 'Facebook'},
    {'icon': Icons.camera_alt, 'label': 'Instagram'},
    {'icon': Icons.chat, 'label': 'WhatsApp'},
    {'icon': Icons.chat, 'label': 'Twitter'},
    {'icon': Icons.snapchat, 'label': 'Snapchat'},
  ];

  void showShareBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Share App On',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              20.height,
              SizedBox(
                height:100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: socialMedia.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: AppColor.blue,
                            child: Icon(
                              socialMedia[index]['icon'],
                              color: AppColor.white,
                              size: 30,
                            ),
                          ),
                          5.height,
                          Text(socialMedia[index]['label']),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showFeedbackBottomSheet() {
    final TextEditingController feedbackController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 20,
              left: 20,
              right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Feedback',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                20.height,

                TextField(
                  controller: feedbackController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Write your feedback...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        Icons.star,
                        color: selectedStars > index
                            ? Colors.amber
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setState(() {
                          if (selectedStars == index + 1) {
                            selectedStars = 0; // Unselect if tapped again
                          } else {
                            selectedStars = index + 1;
                          }
                        });
                      },
                    );
                  }),
                ),
                20.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child:  Text('Submit',style: AppTextStyles.font14,),
                    ),
                    20.width,
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child:  Text('Cancel',style: AppTextStyles.font14,),
                    ),
                  ],
                ),
                20.height,
              ],
            ),
          ),
        );
      },
    );
  }

  void showLogoutDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: AppColor.white,
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child:  Text('No',style: AppTextStyles.font14,),
          ),
          ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.blue,
            // ),
            onPressed: () {
              Navigator.pop(context);
              // Perform logout logic here
            },
            child:  Text('Yes',style: AppTextStyles.font14,),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.white,
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColor.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
                10.height,
                Text(
                  "Shanza Batool",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blue),
            title: const Text("My Profile"),
            onTap: () {
              Get.toNamed(RouteName.userprofileScreen);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blue),
            title: const Text("About"),
            onTap: () {
              Get.toNamed(RouteName.aboutScreen);

            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip, color: Colors.blue),
            title: const Text("Privacy Policy"),
            onTap: () {
              Get.toNamed(RouteName.privacyPolicyScreen);

            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.blue),
            title: const Text("Favourites"),
            onTap: () {
              Get.toNamed(RouteName.favouritesScreen);

            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add, color: Colors.blue),
            title: const Text("Refer a Friend"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.blue),
            title: const Text("Share App"),
            onTap: showShareBottomSheet,
          ),
          ListTile(
            leading: const Icon(Icons.feedback, color: Colors.blue),
            title: const Text("Feedback"),
            onTap: showFeedbackBottomSheet,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Logout"),
            onTap: showLogoutDialog,
          ),
        ],
      ),
    );
  }
}
