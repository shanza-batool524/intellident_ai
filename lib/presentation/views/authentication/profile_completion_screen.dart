import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
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

  final List<String> genders = ["Male", "Female", "Other", "Prefer not to say"];
  final List<String> age_group = ["Under 18", "18–35", "36–60", "60+"];
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
  final List<String> allergies = [
    "Yes, to latex",
    "Yes, to anesthesia",
    "No",
    "Not Sure",
  ];
  final List<String> brushing_frequency = [
    "Once daily",
    "Twice daily",
    "More than twice",
    "Rarely",
  ];
  final List<String> interdental_brushes = [
    "daily",
    "Sometimes",
    "Rarely",
    "Never",
  ];
  final List<String> mouthwash = ["daily", "Occasionally", "Rarely", "Never"];
  final List<String> dental_checkup = [
    "Within 6 months",
    "6–12 months ago",
    "Over a year ago",
    "Never",
  ];
  final List<String> dental_procedures = [
    "Yes, fillings",
    "Yes, root canal/braces",
    "None",
    "Not sure",
  ];
  final List<String> dental_symptoms = [
    "Bleeding gums",
    "Sensitivity",
    "Bad breath",
    "Not Sure",
  ];
  final List<String> smoking = [
    "Yes, regularly",
    "Occasionally",
    "Quit",
    "Never",
  ];
  final List<String> sugary = ["Occasionally", "Frequently", "rarely", "Never"];
  final List<String> tooth_issues = [
    "White spots",
    "Cavities",
    "Discoloration",
    "None",
  ];
  final List<String> jaw_issues = [
    "Yes,grinding",
    "Yes, jaw pain/clicking",
    "Both",
    "None",
  ];
  final List<String> oral_care = [
    "High (very careful)",
    "Moderate (some care)",
    "Low (rarely care)",
    "Not Sure",
  ];
  final List<String> primary_goal = [
    "Improve oral hygiene",
    "Detect existing issues",
    "Regular monitoring",
    "Just exploring",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              60.height,
              Text(
                "Let's complete your profile",
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColor.black,
                ),
              ),
              Text(
                "It will help us to know more about you!",
                style: TextStyle(fontSize: 16.sp, color: AppColor.text),
              ),
              40.height,
              _buildExpansionTile(
                hint: "Choose Gender",
                options: genders,
                selected: gender,
                onChanged:
                    (val) => setState(() {
                      gender = val;
                      isExpanded = false; // Close the tile automatically
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
              _buildExpansionTile(
                hint: "Family history of dental issues?",
                options: family_history,
                selected: history,
                onChanged:
                    (val) => setState(() {
                      loc = history;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Any complications from dental treatments in the past?",
                options: pastConditions,
                selected: pastCondition,
                onChanged:
                    (val) => setState(() {
                      pastCondition = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Currently taking medication that affects oral health?",
                options: current_medications,
                selected: medications,
                onChanged:
                    (val) => setState(() {
                      medications = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Any chronic conditions?",
                options: chronic_conditions,
                selected: conditions,
                onChanged:
                    (val) => setState(() {
                      conditions = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Genetically prone to bone loss/osteoporosis??",
                options: osteoporosis,
                selected: osteo,
                onChanged:
                    (val) => setState(() {
                      osteo = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Any allergies to dental materials?",
                options: allergies,
                selected: allergy,
                onChanged:
                    (val) => setState(() {
                      allergy = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Brushing frequency?",
                options: allergies,
                selected: allergy,
                onChanged:
                    (val) => setState(() {
                      allergy = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Do you floss or use interdental brushes?",
                options: brushing_frequency,
                selected: frequency,
                onChanged:
                    (val) => setState(() {
                      frequency = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Do you use mouthwash?",
                options: mouthwash,
                selected: mouth,
                onChanged:
                    (val) => setState(() {
                      mouth = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Last dental check-up?",
                options: dental_checkup,
                selected: checkup,
                onChanged:
                    (val) => setState(() {
                      checkup = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Previous major dental procedures?",
                options: dental_procedures,
                selected: procedure,
                onChanged:
                    (val) => setState(() {
                      procedure = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Common dental symptoms? (select most frequent)",
                options: dental_symptoms,
                selected: symptoms,
                onChanged:
                    (val) => setState(() {
                      symptoms = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Use of tobacco/smoking?",
                options: smoking,
                selected: smoke,
                onChanged:
                    (val) => setState(() {
                      smoke = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Sugary intake (snacks/drinks)?",
                options: sugary,
                selected: sugar,
                onChanged:
                    (val) => setState(() {
                      sugar = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Noticed any visible tooth issues recently?",
                options: tooth_issues,
                selected: issue,
                onChanged:
                    (val) => setState(() {
                      issue = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Teeth grinding or jaw issues?",
                options: jaw_issues,
                selected: jaw,
                onChanged:
                    (val) => setState(() {
                      jaw = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Level of oral care awareness (self-assessed)",
                options: oral_care,
                selected: oral,
                onChanged:
                    (val) => setState(() {
                      oral = val;
                      isExpanded = false;
                    }),
              ),
              _buildExpansionTile(
                hint: "Primary goal using this app",
                options: primary_goal,
                selected: goal,
                onChanged:
                    (val) => setState(() {
                      goal = val;
                      isExpanded = false;
                    }),
              ),
              30.height,
              PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.loginScreen);
                },
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColor.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    5.width,
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColor.primary,
                    ),
                  ],
                ),
                bgColor: AppColor.secondary,
                gradient: true,
              ),
              20.height,
            ],
          ),
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
          style: TextStyle(
            color: selected == null ? AppColor.sec_text : AppColor.sec_text,
            fontSize: 14.sp,
          ),
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
              style: TextStyle(
                color:
                    selectedDate == null
                        ? AppColor.sec_text
                        : AppColor.sec_text,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
