import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../core/utils/extension.dart';
import '../../../general_widgets/primary_button.dart';
import '../../viewmodel/complete_profile_viewmodel.dart';

class CompleteProfileScreen extends StatelessWidget {
  final controller = Get.put(CompleteProfileController());

  CompleteProfileScreen({super.key});

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
              child: Center(
                child: Image.asset(
                  ImagesUrls.white_logo,
                  width: 250.w,
                  height: 72.h,
                ),
              ),
            ),
            30.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Let's complete your profile",
                    style: AppTextStyles.font26.copyWith(color: AppColor.blue),
                  ),
                  Text(
                    "It will help us to know more about you!",
                    style: AppTextStyles.font16.copyWith(color: AppColor.blue),
                  ),
                  20.height,

                  // Gender dropdown
                  _buildExpansionTile(
                    hint: "Choose Gender",
                    options: controller.genders,
                    selected: controller.gender,
                  ),

                  // Date Picker
                  _buildDatePicker(
                    hint: "Date of Birth",
                    selected: controller.dob,
                  ),

                  _buildExpansionTile(
                      hint: "Location",
                      options: controller.location,
                      selected: controller.loc),
                  _buildExpansionTile(
                      hint: "Family history of dental issues?",
                      options: controller.familyHistory,
                      selected: controller.history),
                  _buildExpansionTile(
                      hint: "Complications from past dental treatments?",
                      options: controller.pastConditions,
                      selected: controller.pastCondition),
                  _buildExpansionTile(
                      hint: "Currently taking medications?",
                      options: controller.currentMedications,
                      selected: controller.medications),
                  _buildExpansionTile(
                      hint: "Any chronic conditions?",
                      options: controller.chronicConditions,
                      selected: controller.conditions),
                  _buildExpansionTile(
                      hint: "Genetically prone to osteoporosis?",
                      options: controller.osteoporosis,
                      selected: controller.osteo),
                  _buildExpansionTile(
                      hint: "Allergies to dental materials?",
                      options: controller.allergies,
                      selected: controller.allergy),
                  _buildExpansionTile(
                      hint: "Brushing frequency?",
                      options: controller.brushingFrequency,
                      selected: controller.frequency),
                  _buildExpansionTile(
                      hint: "Use interdental brushes?",
                      options: controller.interdentalBrushes,
                      selected: controller.interdental),
                  _buildExpansionTile(
                      hint: "Do you use mouthwash?",
                      options: controller.mouthwash,
                      selected: controller.mouth),
                  _buildExpansionTile(
                      hint: "Last dental check-up?",
                      options: controller.dentalCheckup,
                      selected: controller.checkup),
                  _buildExpansionTile(
                      hint: "Previous dental procedures?",
                      options: controller.dentalProcedures,
                      selected: controller.procedure),
                  _buildExpansionTile(
                      hint: "Frequent dental symptoms?",
                      options: controller.dentalSymptoms,
                      selected: controller.symptoms),
                  _buildExpansionTile(
                      hint: "Smoking/tobacco usage?",
                      options: controller.smoking,
                      selected: controller.smoke),
                  _buildExpansionTile(
                      hint: "Sugary intake?",
                      options: controller.sugary,
                      selected: controller.sugar),
                  _buildExpansionTile(
                      hint: "Visible tooth issues?",
                      options: controller.toothIssues,
                      selected: controller.issue),
                  _buildExpansionTile(
                      hint: "Jaw issues?",
                      options: controller.jawIssues,
                      selected: controller.jaw),
                  _buildExpansionTile(
                      hint: "Oral care awareness?",
                      options: controller.oralCare,
                      selected: controller.oral),
                  _buildExpansionTile(
                      hint: "Primary goal using app?",
                      options: controller.primaryGoals,
                      selected: controller.goal),

                  30.height,
                  PrimaryButton(
                    onTap: () {
                      Get.toNamed(RouteName.loginScreen);
                    },
                    childWidget: Text("Continue", style: TextStyle(color: AppColor.white, fontSize: 18.sp, fontWeight: FontWeight.bold)),
                    bgColor: AppColor.blue,
                    gradient: false,
                  ),
                  20.height,
                ],
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
    required RxnString selected,
  }) {
    return Obx(() => Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColor.text_field,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: ExpansionTile(
        key: ValueKey(selected.value),
        title: Text(
          selected.value ?? hint,
          style: TextStyle(
            color: AppColor.sec_text,
            fontSize: 14.sp,
          ),
        ),
        trailing: const Icon(Icons.keyboard_arrow_down_rounded),
        tilePadding: EdgeInsets.zero,
        children: options
            .map(
              (e) => ListTile(
            title: Text(e),
            onTap: () => selected.value = e,
          ),
        )
            .toList(),
      ),
    ));
  }

  Widget _buildDatePicker({
    required String hint,
    required RxnString selected,
  }) {
    return Obx(() => GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: Get.context!,
          initialDate: DateTime(2000),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (picked != null) {
          selected.value = "${picked.year}-${picked.month}-${picked.day}";
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
              selected.value ?? hint,
              style: TextStyle(
                color: AppColor.sec_text,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
