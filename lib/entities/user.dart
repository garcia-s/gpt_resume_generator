import 'package:gpt_resume_generator/entities/user_education.dart';
import 'package:gpt_resume_generator/entities/user_skill.dart';
import 'package:gpt_resume_generator/entities/work_experience.dart';

class User {
  final int? id;
  final String names;
  final String lastname;
  final String idNumber;
  final String idType;
  final String email;
  final String address;
  final String city;
  final String country;
  final List<UserSkill> skills;
  final List<WorkExperience> experience;
  final List<UserEducationItem> education;

  const User({
    this.id,
    required this.names,
    required this.lastname,
    required this.idNumber,
    required this.idType,
    required this.email,
    required this.address,
    required this.city,
    required this.country,
  });
}
