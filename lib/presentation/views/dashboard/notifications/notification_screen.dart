import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/fonts.dart';
import '../../../../core/constants/image_urls.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final notifications = [
    NotificationItem(
      title: "Hey, it's time for lunch",
      subtitle: "About 1 minutes ago",
      imagePath: 'assets/images/onboarding_two.png',
    ),
    NotificationItem(
      title: "Don’t miss your lowerbody workout",
      subtitle: "About 3 hours ago",
      imagePath: 'assets/images/onboarding_one.png',
    ),
    NotificationItem(
      title: "Hey, let’s add some meals for your b...",
      subtitle: "About 3 hours ago",
      imagePath: 'assets/images/onboarding_one.png',
    ),
    NotificationItem(
      title: "Congratulations, You have finished A...",
      subtitle: "29 May",
      imagePath: 'assets/images/onboarding_two.png',
    ),
    NotificationItem(
      title: "Hey, it’s time for lunch",
      subtitle: "8 April",
      imagePath: 'assets/images/onboarding_two.png',
    ),
    NotificationItem(
      title: "Ups, You have missed your Lowerbo...",
      subtitle: "3 April",
      imagePath: 'assets/images/onboarding_two.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary,
        // AppBar color
        title: Text(
          "Notifications",
          style: AppTextStyles.font18.copyWith(color: AppColor.blue),
        ),

        elevation: 0.1,
        shadowColor: AppColor.black,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          itemCount: notifications.length,
          separatorBuilder:
              (_, __) => const Divider(height: 16, color: AppColor.grey),
          itemBuilder: (context, index) {
            final item = notifications[index];
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: AppColor.primary,
                backgroundImage: AssetImage(item.imagePath),
              ),
              title: Text(
                maxLines: 1,
                item.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  item.subtitle,
                  style: const TextStyle(fontSize: 12, color: AppColor.text),
                ),
              ),
              trailing: const Icon(Icons.more_vert, color: AppColor.text),
            );
          },
        ),
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String subtitle;
  final String imagePath;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}
