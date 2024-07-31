import 'dart:convert';

import 'package:education_managment/utils/cache_helper.dart';

class StudentModel {
  final String fullName;
  final String school;
  final String phone;
  final String gender;
  final String classLevel;
  final String idImage;
  final String username;
  final String? password;
  final String? studentNumber;

  StudentModel({
    required this.fullName,
    required this.school,
    required this.phone,
    required this.gender,
    required this.classLevel,
    required this.idImage,
    required this.username,
    this.password,
    this.studentNumber
  });

  factory StudentModel.fromMap(Map<String, dynamic> json) {
    return StudentModel(
      fullName: json['full_name'],
      school: json['school'],
      phone: json['phone'],
      gender: json['gender'],
      classLevel: json['class'],
      idImage: json['id_image_url'],
      username: json['username'],
      studentNumber: json['studentNumber'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "full_name": this.fullName,
      "school": this.school,
      "phone": this.phone,
      'gender': this.gender,
      "class": this.classLevel == "تاسع" ? "T" : "B",
      "id_image_url": this.idImage,
      "username": this.username,
      "password": this.password,
      "studentNumber":studentNumber
    };
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source));

  static StudentModel getStuderData() {
    return StudentModel.fromJson(CacheHelper.getData(key: "student"));
  }
}
