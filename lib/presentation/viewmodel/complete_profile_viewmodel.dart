import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteProfileController extends GetxController {
  // Observables
  var gender = RxnString();
  var dob = RxnString();
  var loc = RxnString();
  var history = RxnString();
  var pastCondition = RxnString();
  var medications = RxnString();
  var conditions = RxnString();
  var osteo = RxnString();
  var allergy = RxnString();
  var frequency = RxnString();
  var interdental = RxnString();
  var mouth = RxnString();
  var checkup = RxnString();
  var procedure = RxnString();
  var symptoms = RxnString();
  var smoke = RxnString();
  var sugar = RxnString();
  var issue = RxnString();
  var jaw = RxnString();
  var oral = RxnString();
  var goal = RxnString();

  // Dropdown lists
  final genders = ["Male", "Female", "Other", "Prefer not to say"];
  final ageGroup = ["Under 18", "18–35", "36–60", "60+"];
  final location = ["India", "UAE", "USA", "Other"];
  final familyHistory = [
    "Yes, gum issues",
    "Yes, enamel issues",
    "No known issues",
    "Not sure",
  ];
  final pastConditions = ["Yes", "No"];
  final chronicConditions = ["Diabetes", "Heart Disease", "None", "Other"];
  final currentMedications = ["Yes", "No", "Not sure", "Prefer not to say"];
  final osteoporosis = ["Yes", "No", "Not sure", "Prefer not to say"];
  final allergies = ["Yes, to latex", "Yes, to anesthesia", "No", "Not Sure"];
  final brushingFrequency = [
    "Once daily",
    "Twice daily",
    "More than twice",
    "Rarely"
  ];
  final interdentalBrushes = ["Daily", "Sometimes", "Rarely", "Never"];
  final mouthwash = ["Daily", "Occasionally", "Rarely", "Never"];
  final dentalCheckup = [
    "Within 6 months",
    "6–12 months ago",
    "Over a year ago",
    "Never"
  ];
  final dentalProcedures = [
    "Yes, fillings",
    "Yes, root canal/braces",
    "None",
    "Not sure"
  ];
  final dentalSymptoms = [
    "Bleeding gums",
    "Sensitivity",
    "Bad breath",
    "Not Sure"
  ];
  final smoking = ["Yes, regularly", "Occasionally", "Quit", "Never"];
  final sugary = ["Occasionally", "Frequently", "Rarely", "Never"];
  final toothIssues = [
    "White spots",
    "Cavities",
    "Discoloration",
    "None"
  ];
  final jawIssues = [
    "Yes, grinding",
    "Yes, jaw pain/clicking",
    "Both",
    "None"
  ];
  final oralCare = [
    "High (very careful)",
    "Moderate (some care)",
    "Low (rarely care)",
    "Not Sure"
  ];
  final primaryGoals = [
    "Improve oral hygiene",
    "Detect existing issues",
    "Regular monitoring",
    "Just exploring"
  ];
}
