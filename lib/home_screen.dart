import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import smooth page indicator package

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          // Adjust the padding for the logo to make it appear lower
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 10.0), // Increase top padding
            child: Image.asset('assets/logo/white_logo.png', width: 250,height:72),
          ),
          // Main content (Page View)
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildOnboardingPage(
                  image: 'assets/images/onboarding_one.png',
                  title: 'Welcome to Your Smart Dental Companion',
                  description: 'Get expert dental guidance anytime, anywhere. Our AI-powered app helps you take control of your oral health with smart tools and personalized insights.',
                ),
                _buildOnboardingPage(
                  image: 'assets/images/onboarding_two.png',
                  title: 'Snap, Scan, and Get Instant Report',
                  description: 'Use your phone camera to scan your teeth. Our advanced AI analyzes your condition and gives you personalized insights.',
                ),
                _buildOnboardingPage(
                  image: 'assets/images/onboarding_two.png',
                  title: 'Second Opinion',
                  description: 'Not sure about your diagnosis or treatment plan? Share your scan and get a second opinion from dental experts.',
                ),
                _buildOnboardingPage(
                  image: 'assets/images/onboarding_three.png',
                  title: 'Your Privacy, Our Priority',
                  description: 'We use bank-grade encryption to protect your privacy. Your data is securely stored and accessible only to you.',
                ),
              ],
            ),
          ),

          // Smooth Page Indicator for better page transition
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              controller: _pageController,  // PageController instance
              count: 4,
              effect: ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                spacing: 8,
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
                expansionFactor: 3,  // Extends the selected dot's size
              ),
            ),
          ),

          // Image button (Next button)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                if (_currentPage == 3) {
                  // Navigate to the next screen after the last onboarding
                  // For example, go to the login or main screen
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                }
              },
              child: Image.asset(
                'assets/images/button.png',
                width: 60,
                height: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // White container with image and text
          Container(
            width:350,
            height:550,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Image.asset(image, width: 275,height:250), // Replace with your image
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
