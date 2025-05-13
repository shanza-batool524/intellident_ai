import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  // Dropdown values
  String? gender;
  String? dob;
  String? pastCondition;
  String? loc;
  String? history;
  String? conditions;
  String? skinCondition;
  String? medications;
  String? osteo;
  String? allergy;
  String? frequency;
  String? interdental;
  String? mouth;
  String? checkup;
  String? procedure;
  String? symptoms;
  String? smoke;
  String? sugar;
  String? issue;
  String? jaw;
  String? oral;
  String? goal;

  bool isExpanded = false;

  // List of options
  final List<String> genders = ["Male", "Female", "Other", "Prefer not to say"];
  final List<String> location = ["India", "UAE", "USA", "Other"];
  final List<String> family_history = [
    "Yes, gum issues",
    "Yes, enamel issues",
    "No known issues",
    "Not sure",
  ];
  final List<String> pastConditions = ["yes", "No"];
  final List<String> chronic_conditions = [
    "Diabetes",
    "Heart Disease",
    "None",
    "Other",
  ];
  final List<String> allergyOptions = ["Yes", "No"];
  final List<String> current_medications = [
    "Yes",
    "No",
    "Not sure",
    "Prefer not to say",
  ];
  final List<String> osteoporosis = [
    "Yes",
    "No",
    "Not sure",
    "Prefer not to say",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.h,
              width: double.infinity,
              color: AppColor.blue,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/logo/white_logo.png",
                  width: 250.w,
                  height: 72.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            30.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's complete your profile",
                      style: AppTextStyles.profileTitle,
                    ),
                    Text(
                      "It will help us to know more about you!",
                      style: AppTextStyles.profileSubtitle,
                    ),
                    20.height,
                    _buildExpansionTile(
                      hint: "Choose Gender",
                      options: genders,
                      selected: gender,
                      onChanged:
                          (val) => setState(() {
                        gender = val;
                        isExpanded = false;
                      }),
                    ),
                    _buildDatePicker(
                      hint: "Date of Birth",
                      selectedDate: dob,
                      onPicked: (val) => setState(() => dob = val),
                    ),
                    _buildExpansionTile(
                      hint: "Location",
                      options: location,
                      selected: loc,
                      onChanged:
                          (val) => setState(() {
                        loc = val;
                        isExpanded = false;
                      }),
                    ),
                    // More widgets follow with similar changes...
                    PrimaryButton(
                      onTap: () {
                        Get.toNamed(RouteName.loginScreen);
                      },
                      childWidget: Text(
                        "Continue",
                        style: AppTextStyles.profileButtonText,
                      ),
                      bgColor: AppColor.blue,
                      gradient: false,
                    ),
                    20.height,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile({
    required String hint,
    required List<String> options,
    required String? selected,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColor.text_field,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: ExpansionTile(
        key: ValueKey<String?>(selected),
        title: Text(
          selected ?? hint,
          style: selected == null
              ? AppTextStyles.profileExpansionTileHint
              : AppTextStyles.profileExpansionTileHeader,
        ),
        trailing: const Icon(Icons.keyboard_arrow_down_rounded),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        shape: const Border(),
        initiallyExpanded: false,
        children:
        options.map((e) {
          return ListTile(
            title: Text(e),
            onTap: () {
              onChanged(e);
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDatePicker({
    required String hint,
    required String? selectedDate,
    required ValueChanged<String> onPicked,
  }) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: DateTime(2000),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (picked != null) {
          onPicked("${picked.year}-${picked.month}-${picked.day}");
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        decoration: BoxDecoration(
          color: AppColor.text_field,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate ?? hint,
              style: selectedDate == null
                  ? AppTextStyles.profileExpansionTileHint
                  : AppTextStyles.profileExpansionTileHeader,
            ),
          ],
        ),
      ),
    );
  }
}
