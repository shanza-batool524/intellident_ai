import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/constants/image_urls.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import 'package:intellident_ai/general_widgets/custom_drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/fonts.dart';

class PartnersScreen extends StatefulWidget {
  const PartnersScreen({super.key});

  @override
  State<PartnersScreen> createState() => _PartnersScreenState();
}

class _PartnersScreenState extends State<PartnersScreen> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary,
        // AppBar color
        title: Text(
          "Products",
          style: AppTextStyles.font18.copyWith(color: AppColor.blue),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Image.asset(ImagesUrls.notification, width: 30, height: 30),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          20.height,
          CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  ImagesUrls.home_scan,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  ImagesUrls.home_scan2,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  'assets/images/home_scan2.png', // Third image
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 160.h,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              scrollPhysics: const BouncingScrollPhysics(),
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          20.height,
          // Custom Dots Indicator using SmoothPageIndicator
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3, // The number of images in the carousel
              effect: ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                spacing: 8,
                activeDotColor: AppColor.blue,
                dotColor: Colors.grey.shade400,
                expansionFactor: 3,
              ),
            ),
          ),
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
